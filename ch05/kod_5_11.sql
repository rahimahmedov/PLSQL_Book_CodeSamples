DECLARE
  some_excpt EXCEPTION;
BEGIN
  BEGIN
    dbms_output.put_line('line 1');
    raise some_excpt;
  EXCEPTION
  WHEN some_excpt THEN
    dbms_output.put_line('Error occured.. Continue execution');
  END;
  dbms_output.put_line('line 2');
END;
/
