WITH DataSource AS
(
  SELECT
    '0174' AS InterfaceId,
    '0' AS ErrorClassification,
    IIF(
      ISNULL(OrderSource, '') = '',
      OrderSource,
	  LAG(
      CONCAT(SUBSTRING(OrderSource, 1, 2), SUBSTRING(CONVERT(VARCHAR(10), IF0174Seq), 3, 8)),
      1,
      CONCAT(SUBSTRING(OrderSource, 1, 2), SUBSTRING(CONVERT(VARCHAR(10), IF0174Seq), 3, 8))) OVER (partition by OrderSource, CustomerPoNumber ORDER BY CustomerPoNumber)
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
Order BY OliId;

 