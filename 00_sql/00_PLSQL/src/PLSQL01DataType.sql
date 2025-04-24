-- Example of PL/SQL Data Types

DECLARE
    -- Scalar Data Types
    v_number NUMBER := 100;
    v_varchar2 VARCHAR2(50) := 'Hello, PL/SQL!';
    v_date DATE := SYSDATE;
    v_boolean BOOLEAN := TRUE;

    -- Composite Data Types
    TYPE t_record IS RECORD (
        id NUMBER,
        name VARCHAR2(50),
        created_date DATE
    );
    v_record t_record;

    TYPE t_table IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_table t_table;

BEGIN
    -- Assign values to the record
    v_record.id := 1;
    v_record.name := 'Sample Record';
    v_record.created_date := SYSDATE;

    -- Assign values to the associative array
    v_table(1) := 10;
    v_table(2) := 20;

    -- Output values
    DBMS_OUTPUT.PUT_LINE('Number: ' || v_number);
    DBMS_OUTPUT.PUT_LINE('Varchar2: ' || v_varchar2);
    DBMS_OUTPUT.PUT_LINE('Date: ' || TO_CHAR(v_date, 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('Boolean: ' || CASE WHEN v_boolean THEN 'TRUE' ELSE 'FALSE' END);
    DBMS_OUTPUT.PUT_LINE('Record Name: ' || v_record.name);
    DBMS_OUTPUT.PUT_LINE('Table Value at Index 1: ' || v_table(1));
END;
/