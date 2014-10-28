set echo on serverout on
DECLARE
  a INTEGER       := 10;
  b VARCHAR2(200) := '5x';
  c INTEGER;
BEGIN
  -- bas vere bilecek invalid_number SQL sehvidir ve yalniz SQL daxilinde
  -- olan yanlis nomre formatlari ucun bu xeta bash verir
  SELECT a/b INTO c FROM dual;
  dbms_output.put_line('result: '||c);
EXCEPTION
  WHEN invalid_number THEN
    dbms_output.put_line('Nomre dogru deyil - '||b);
END;
/

DECLARE
  a INTEGER       := 10;
  b VARCHAR2(200) := '5x';
  c INTEGER;
  invalid_number EXCEPTION;
BEGIN
  SELECT a/b INTO c FROM dual;
  dbms_output.put_line('result: '||c);
EXCEPTION
  WHEN invalid_number THEN
    dbms_output.put_line('Nomre dogru deyil - '||b);
END;
/

DECLARE
  a INTEGER       := 10;
  b VARCHAR2(200) := '5x';
  c INTEGER;
  invalid_number EXCEPTION;
BEGIN
  SELECT a/b INTO c FROM dual;
  dbms_output.put_line('result: '||c);
EXCEPTION
  WHEN STANDARD.invalid_number THEN
    dbms_output.put_line('Nomre dogru deyil - '||b);
END;
/
