-- AUTO-GENERATED SETUP FILE

-- Included from app\procedures\sample_procedure.sql
CREATE OR REPLACE PROCEDURE implementation.sample_procedure()
RETURNS STRING
LANGUAGE SQL
AS
$$
  BEGIN
    RETURN 'Hello from SQL!';
  END;
$$;


-- Included from python\sample_model.py
def run(session):
    return "Hello from Python!"


-- Included from test\sample_test.sql
CALL implementation.sample_procedure();

