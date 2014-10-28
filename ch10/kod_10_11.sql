DECLARE
  v_clob1 CLOB;
  v_clob2 CLOB;
  v_res	   INTEGER;
BEGIN
  v_clob1 := 'DATA TEST DATA TEST';
  v_clob2 := 'DATA TEST DATA TEST';
  DBMS_OUTPUT.PUT_LINE('Maximum LOB size: '||DBMS_LOB.LOBMAXSIZE);
  v_res := DBMS_LOB.COMPARE(v_clob1, v_clob2);
  DBMS_OUTPUT.PUT_LINE('Compare result: '||v_res);
  v_clob2 := 'TEST DATA TEST DATA';
  v_res := DBMS_LOB.COMPARE(v_clob1, v_clob2);
  DBMS_OUTPUT.PUT_LINE('Compare result: '||v_res);
  v_res := DBMS_LOB.COMPARE(v_clob1, v_clob2, 9, 1, 6);
  DBMS_OUTPUT.PUT_LINE('Compare result: '||v_res);
END;
/
