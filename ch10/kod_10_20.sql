set echo on
set serverout on
DECLARE
  v_bfile BFILE;
  v_dir VARCHAR2(50);
  v_flname VARCHAR2(2000);
  v_buff RAW(200);
  v_size INTEGER;
BEGIN
  SELECT image_file INTO  v_bfile 
    FROM images_bfile
   WHERE ROWNUM = 1;
  IF DBMS_LOB.FILEEXISTS(v_bfile) = 0 
  THEN
    DBMS_OUTPUT.PUT_LINE('Fayl movcud deyil');
    RETURN;
  ELSE
    DBMS_LOB.FILEGETNAME(v_bfile, v_dir, v_flname);
    DBMS_OUTPUT.PUT_LINE(v_dir||'/'||v_flname||' oxunur');
  END IF;
  IF DBMS_LOB.FILEISOPEN(v_bfile) = 0 
  THEN
    DBMS_OUTPUT.PUT_LINE('File aciq deyil, oxumaq ucun acilir');
    DBMS_LOB.FILEOPEN(v_bfile);
  END IF;
  v_size := 100;
  DBMS_LOB.READ(v_bfile, v_size, 1, v_buff);
  DBMS_OUTPUT.PUT_LINE('Oxunan deyer: '||RAWTOHEX(v_buff));
  DBMS_LOB.FILECLOSE(v_bfile);
END;
/
