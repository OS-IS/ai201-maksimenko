--  get_data.sql
CREATE OR REPLACE FUNCTION get_data(attr_value TEXT)
RETURNS TABLE(s_id INTEGER, pupil_name VARCHAR, class VARCHAR, confidentiality_level INTEGER) AS $$
BEGIN
    RETURN QUERY EXECUTE 'SELECT * FROM pupil WHERE pupil_name = ''' || attr_value || '''';
END;
$$ LANGUAGE plpgsql;
