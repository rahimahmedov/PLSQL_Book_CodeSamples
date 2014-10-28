set echo on serverout on
DECLARE
  some_excpt EXCEPTION;
BEGIN
  --DECLARE
  --  some_excpt EXCEPTION;
  BEGIN
    raise some_excpt;
  END;
EXCEPTION
WHEN some_excpt THEN
  dbms_output.put_line('Error SOME_EXCPT raised');
WHEN OTHERS THEN
  dbms_output.put_line('Error OTHER exception raised');
END;
/
