CREATE OR REPLACE TRIGGER trg_before_insert_example
BEFORE INSERT ON your_table_name
FOR EACH ROW
BEGIN
    -- Example: Automatically set a column value before insert
    :NEW.column_name := 'Default Value';
END;
/