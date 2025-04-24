DECLARE
    TYPE num_array IS VARRAY(10) OF NUMBER;
    my_array num_array := num_array(1, 2, 3, 4, 5);
BEGIN
    FOR i IN 1..my_array.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Element ' || i || ': ' || my_array(i));
    END LOOP;
END;
/