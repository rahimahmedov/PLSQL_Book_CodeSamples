DECLARE
  v_clob CLOB;
BEGIN
  select des into v_clob from secure_data where rownum=1 for update;  
  
  DBMS_LOB.FRAGMENT_DELETE(v_clob, 15, 15);
  DBMS_OUTPUT.PUT_LINE('Delete result: '||v_clob);
  
  DBMS_LOB.FRAGMENT_INSERT(v_clob, 15, 15, 'FFFFFFFFFFFFFFF');
  DBMS_OUTPUT.PUT_LINE('Insert result: '||v_clob);

  DBMS_LOB.FRAGMENT_MOVE(v_clob, 15, 15, 1);
  DBMS_OUTPUT.PUT_LINE('Move result: '||v_clob);

  DBMS_LOB.FRAGMENT_REPLACE(v_clob, 10, 10, 10, 'ZZZZZZZZZZZZZ');
  DBMS_OUTPUT.PUT_LINE('Delete result: '||v_clob);

  COMMIT;
END;
/
