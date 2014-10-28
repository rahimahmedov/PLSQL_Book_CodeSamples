DECLARE
  v_dst_clob CLOB;
  v_src_clob CLOB;
BEGIN
  v_dst_clob := 'Hello ';
  v_src_clob := ' big world';
  DBMS_LOB.APPEND(v_dst_clob, v_src_clob);
  DBMS_OUTPUT.PUT_LINE(v_dst_clob);
END;
/
