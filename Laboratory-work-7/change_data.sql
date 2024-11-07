-- change_data.sql
CREATE OR REPLACE FUNCTION change_data(attr1_value TEXT, new_attr2_value TEXT)
RETURNS VOID AS $$
BEGIN
    EXECUTE 'UPDATE pupil SET class = $1 WHERE pupil_name = $2'
    USING new_attr2_value, attr1_value;
END;
$$ LANGUAGE plpgsql;
