CREATE OR REPLACE PROCEDURE implementation.sample_procedure()
RETURNS STRING
LANGUAGE SQL
AS
$$
  BEGIN
    RETURN 'Hello from SQL!';
  END;
$$;
