DECLARE
  v_clob CLOB := 'TEST DATA TEST DATA';
BEGIN
  DBMS_OUTPUT.PUT_LINE(DBMS_LOB.INSTR(v_clob, 'DATA', 1, 2));
END; 
/
