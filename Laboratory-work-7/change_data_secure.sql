-- change_data_secure.sql
CREATE OR REPLACE FUNCTION change_data_secure(attr1_value TEXT, new_attr2_value TEXT)
RETURNS VOID AS $$
BEGIN
    UPDATE pupil SET class = new_attr2_value WHERE pupil_name = attr1_value;
END;
$$ LANGUAGE plpgsql;
