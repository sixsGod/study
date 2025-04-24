DECLARE
    counter NUMBER := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('Counter value: ' || counter);
        counter := counter + 1;

        -- Exit condition
        IF counter > 10 THEN
            EXIT;
        END IF;
    END LOOP;
END;
/