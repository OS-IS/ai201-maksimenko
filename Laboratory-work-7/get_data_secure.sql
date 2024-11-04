-- get_data_secure.sql
CREATE OR REPLACE FUNCTION get_data_secure(attr_value TEXT)
RETURNS TABLE(s_id INTEGER, pupil_name VARCHAR, class VARCHAR, confidentiality_level INTEGER) AS $$
BEGIN
    RETURN QUERY SELECT * FROM pupil WHERE pupil_name = attr_value;
END;
$$ LANGUAGE plpgsql;
