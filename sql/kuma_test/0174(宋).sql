WITH Original AS
(
  SELECT
    '0174' AS InterfaceId,
    '0' AS ErrorClassification,
    IIF(
      ISNULL(OrderSource, '') = '',
      OrderSource,
      CONCAT(SUBSTRING(OrderSource, 1, 2), SUBSTRING(CONVERT(VARCHAR(10), IF0174Seq), 3, 8))
    ) AS OhiId,
    '0' AS Status,
    IIF(
      ISNULL(OrderSource, '') = '',
      OrderSource,
      CONCAT(SUBSTRING(OrderSource, 1, 3), IF0174Seq)
    ) AS OrigSysDocumentRef,
    CONVERT(INT, NULLIF(OrderSource, '')) AS OrderSource,
    CustomerPoNumber,
    CustomerNumber,
    ShipmentPriorityCode,
    ShipToOrgCode,
    OrganizationCode,
    SecondaryInventoryName,
    IIF(
      ISNULL(OrderSource, '') = '',
      OrderSource,
      CONCAT(SUBSTRING(OrderSource, 1, 2), SUBSTRING(CONVERT(VARCHAR(10), IF0174Seq), 3, 8))
    ) AS OliId,
    OrigSysLineRef,
    InventoryItemSegment1,
    OrderedQuantity,
    InvoiceToOrgCode,
    '' As ErrorMessage,
    '' AS SalesTableOIFRecId
  FROM earth_dp_SpoonsOrderIF_LS_IF_0174_TempWithSeq
),
SeqHeaderSource AS
(
  SELECT
    OrderSource,
    CustomerPoNumber,
    ROW_NUMBER() OVER (PARTITION BY OrderSource, CustomerPoNumber ORDER BY (SELECT NULL)) AS HeaderNum,
    OhiId
  FROM Original
),
DataSource AS
(
  SELECT
    Original.CustomerNumber,
    Original.CustomerPoNumber,
    Original.ErrorClassification,
    Original.ErrorMessage,
    Original.InterfaceId,
    Original.InventoryItemSegment1,
    Original.InvoiceToOrgCode,
    SeqHeaderSource.OhiId,
    Original.OliId,
    Original.OrderSource,
    Original.OrderedQuantity,
    Original.OrganizationCode,
    Original.OrigSysDocumentRef,
    Original.OrigSysLineRef,
    Original.SecondaryInventoryName,
    Original.ShipToOrgCode,
    Original.ShipmentPriorityCode,
    Original.SalesTableOIFRecId,
    Original.Status
  FROM Original LEFT JOIN SeqHeaderSource ON
    Original.OrderSource = SeqHeaderSource.OrderSource AND
    Original.CustomerPoNumber = SeqHeaderSource.CustomerPoNumber AND
    SeqHeaderSource.HeaderNum = 1
)
SELECT
  CustomerNumber,
  CustomerPoNumber,
  ErrorClassification,
  ErrorMessage,
  InterfaceId,
  InventoryItemSegment1,
  InvoiceToOrgCode,
  OhiId,
  OliId,
  OrderSource,
  OrderedQuantity,
  OrganizationCode,
  OrigSysDocumentRef,
  OrigSysLineRef,
  SecondaryInventoryName,
  ShipToOrgCode,
  ShipmentPriorityCode,
  SalesTableOIFRecId,
  Status
FROM DataSource