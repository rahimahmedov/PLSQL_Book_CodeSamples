DECLARE
  v_clob CLOB;
BEGIN
  select des into v_clob from secure_data where rownum=1 for update;  
  
  DBMS_LOB.SETCONTENTTYPE(v_clob, 'text');
  DBMS_OUTPUT.PUT_LINE('Content type: '||DBMS_LOB.GETCONTENTTYPE(v_clob));
  DBMS_LOB.SETCONTENTTYPE(v_clob, '');
  DBMS_OUTPUT.PUT_LINE('Content type: '||DBMS_LOB.GETCONTENTTYPE(v_clob));

  COMMIT;
END;
/
