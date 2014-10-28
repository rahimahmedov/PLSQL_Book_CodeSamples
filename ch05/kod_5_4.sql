set echo on serverout on
DECLARE
  invalid_range EXCEPTION;
  val           INTEGER :=-1;
BEGIN
  IF NOT val BETWEEN 1 AND 1000 THEN
    raise invalid_range;
  END IF;
  dbms_output.put_line('val: '||val);
EXCEPTION
WHEN invalid_range THEN
  dbms_output.put_line('Yanlis deyer');
END;
/
