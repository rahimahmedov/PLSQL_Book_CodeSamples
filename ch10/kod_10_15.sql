set echo on
set serveroutput on
DECLARE 
  v_clob CLOB := 'TEST DATA TEST DATA';
  v_blob BLOB;
  v_bfile BFILE;
BEGIN
  DBMS_OUTPUT.PUT_LINE('CLOB LENGTH: '||DBMS_LOB.GETLENGTH(v_clob));
  SELECT image INTO v_blob FROM images_bf WHERE ROWNUM = 1;
  DBMS_OUTPUT.PUT_LINE('BLOB LENGTH: '||DBMS_LOB.GETLENGTH(v_blob));
  SELECT image_file INTO v_bfile FROM images_bfile WHERE ROWNUM = 1; 
  DBMS_OUTPUT.PUT_LINE('BFILE LENGTH: '||DBMS_LOB.GETLENGTH(v_bfile));
END;
/
