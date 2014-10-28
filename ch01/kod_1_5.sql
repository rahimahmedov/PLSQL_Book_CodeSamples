DECLARE
  l_var   CONSTANT VARCHAR2 (50) := 'Hello world';
BEGIN
  DBMS_OUTPUT.put_line (l_var);
  DECLARE
    l_date   DATE;
  BEGIN
    l_date := SYSDATE;
    DBMS_OUTPUT.put_line (l_date);
    DBMS_OUTPUT.put_line (l_var);
  END; 
END;
/
