-- get_data_secure.sql
CREATE OR REPLACE FUNCTION get_data_secure(attr_value TEXT)
RETURNS TABLE(s_id INTEGER, pupil_name VARCHAR, class VARCHAR, confidentiality_level INTEGER) AS $$
BEGIN
    RETURN QUERY SELECT p.s_id, p.pupil_name, p.class, p.confidentiality_level 
                 FROM pupil AS p 
                 WHERE p.pupil_name = attr_value;
END;
$$ LANGUAGE plpgsql;

