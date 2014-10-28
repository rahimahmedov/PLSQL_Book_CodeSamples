set serveroutput on
set feedback on
set echo on
DECLARE
  v_lob BLOB;
  v_buffer RAW(200);
  v_amount INTEGER := 200;
BEGIN
  /* BLOB tipli sutunun lob locatorunu v_lob deyisenine secirik */
  SELECT image INTO v_lob 
    FROM images_bf 
   WHERE imagename = 'image4';

  /* LOB lokator oxumaq ucun aciriq */
  DBMS_LOB.OPEN (v_lob, DBMS_LOB.LOB_READONLY);

  /* LOB melumatin 1-ci baytindan baslayaraq v_amount 
     geder (200 byte) melumati v_buffer deyishenine oxuyuruq  */
  DBMS_LOB.READ (v_lob, v_amount, 1, v_buffer);

  /* v_buffer deyishenin deyerini 16-liq sheklinde (RAWTOHEX funksiyasi 
     ile) cap edirik */
  DBMS_OUTPUT.PUT_LINE(RAWTOHEX(v_buffer));

  /* LOB lokator baglanir */	
  DBMS_LOB.CLOSE(v_lob);
END;
/   
