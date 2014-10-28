DECLARE
  v_blob BLOB;
BEGIN
  SELECT image INTO v_blob FROM images_bf WHERE ROWNUM=1;
  DBMS_OUTPUT.PUT_LINE('Chunk size: ' || DBMS_LOB.GETCHUNKSIZE(v_blob));
END;
/
DECLARE
  v_clob CLOB := 'TEST DATA TEST DATA';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Chunk size: ' || DBMS_LOB.GETCHUNKSIZE(v_clob));
END;
/