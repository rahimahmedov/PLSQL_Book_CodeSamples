DECLARE
  v_clob CLOB;
  v_amt  INTEGER;
INTEGER := 1);
BEGIN
  v_clob := 'FFFFFFFFFFFFFFFFFFFFFFFF';
  v_amt := 100;
  DBMS_LOB.ERASE(v_clob, v_amt, 10);
  DBMS_OUTPUT.PUT_LINE('Erase result: '||v_clob);
  DBMS_OUTPUT.PUT_LINE('Erased amount: '||v_amt);
END;
/
