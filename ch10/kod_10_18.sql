set echo on
set serveroutput on
DECLARE
  v_clob CLOB := 'VERY BIG CLOB DATA, UNSTRUCTURED';
  v_amount INTEGER;
  v_buffer VARCHAR2(200);
BEGIN
  DBMS_LOB.OPEN(v_clob, DBMS_LOB.LOB_READWRITE);
  DBMS_OUTPUT.PUT_LINE('CLOB DATA IS OPEN: '||
	CASE DBMS_LOB.ISOPEN(v_clob) WHEN 0 THEN 'NO' ELSE 'YES' END);
  v_amount := 50;
  DBMS_LOB.READ(v_clob, v_amount, 25, v_buffer);
  DBMS_OUTPUT.PUT_LINE('DATA READ FROM CLOB: '||v_buffer);
  DBMS_OUTPUT.PUT_LINE('READ DATA SIZE: '||v_amount);
  v_buffer := 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';
  DBMS_LOB.WRITE(v_clob, 10, 10, v_buffer);
  DBMS_OUTPUT.PUT_LINE('DATA AFTER WIRTE: '||v_clob);
  v_buffer := 'zzzzzzzzzzzzzzzzzzzzz';
  DBMS_LOB.WRITEAPPEND(v_clob, 10, v_buffer);  
  DBMS_OUTPUT.PUT_LINE('DATA AFTER WRITEAPPEND: '||v_clob);
END;
/
