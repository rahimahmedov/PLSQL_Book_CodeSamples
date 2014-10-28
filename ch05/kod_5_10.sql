set echo on serverout on
DECLARE
  some_excpt EXCEPTION;
BEGIN
  dbms_output.put_line('line 1');
  raise some_excpt;
  <<line2>>
  dbms_output.put_line('line 2');
EXCEPTION
WHEN some_excpt THEN
  dbms_output.put_line('Error occured.. Continue execution');
  GOTO line2;
END;
/
