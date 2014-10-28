DECLARE
  v_clob_sess CLOB;
  v_buff VARCHAR2(200);
  v_res INTEGER;
BEGIN
  v_buff := 'SESSION LOB DATA';
  -- SESSION muddetli LOB deyeri yaradilir, LOB yazmaq ucun acilir ve yazilir
  DBMS_LOB.CREATETEMPORARY(v_clob_sess, TRUE,DBMS_LOB.SESSION);
  -- CLOB deyeri acilir
  DBMS_LOB.OPEN(v_clob_sess, DBMS_LOB.LOB_READWRITE);
  -- melumat yazilir
  DBMS_LOB.WRITEAPPEND(v_clob_sess, LENGTH(v_buff), v_buff);
  – CLOB deyeri baglanir
  DBMS_LOB.CLOSE(v_clob_sess);
  DBMS_OUTPUT.PUT_LINE(v_clob_sess);
  -- muveqqeti CLOB deyeri silinir
  DBMS_LOB.FREETEMPORARY(v_clob_sess);
END;
/
