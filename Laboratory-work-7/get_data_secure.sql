-- get_data_secure.sql
CREATE OR REPLACE FUNCTION get_data(attr_value TEXT)
RETURNS TABLE(s_id INTEGER, pupil_name VARCHAR, class VARCHAR, confidentiality_level INTEGER) AS $$
BEGIN
    RETURN QUERY EXECUTE 'SELECT * FROM pupil WHERE pupil_name = $1'
    USING attr_value;
END;
$$ LANGUAGE plpgsql;

