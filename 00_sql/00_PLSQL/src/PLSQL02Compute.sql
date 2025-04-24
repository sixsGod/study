-- PLSQL block to compute a simple operation
DECLARE
    num1 NUMBER := 10;
    num2 NUMBER := 20;
    result NUMBER;
BEGIN
    -- Perform computation
    result := num1 + num2;

    -- Output the result
    DBMS_OUTPUT.PUT_LINE('The result of the computation is: ' || result);
END;
/