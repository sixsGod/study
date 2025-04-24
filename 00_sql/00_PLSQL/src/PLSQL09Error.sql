BEGIN
    -- Example of a block that raises an exception
    DECLARE
        v_divisor NUMBER := 0;
        v_result NUMBER;
    BEGIN
        -- Attempting division by zero
        v_result := 10 / v_divisor;
    EXCEPTION
        WHEN ZERO_DIVIDE THEN
            DBMS_OUTPUT.PUT_LINE('Error: Division by zero occurred.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
    END;
END;
/