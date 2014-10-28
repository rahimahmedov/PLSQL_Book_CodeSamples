set echo on serverout on
DECLARE
  invalid_range EXCEPTION;
  PRAGMA EXCEPTION_INIT(invalid_range, -20001);
  val           INTEGER :=-1;
BEGIN
  IF NOT val BETWEEN 1 AND 1000 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Yanlis deyer');
  END IF;
  dbms_output.put_line('val: '||val);
EXCEPTION
WHEN invalid_range THEN
  dbms_output.put_line(SQLERRM);
END;
/
