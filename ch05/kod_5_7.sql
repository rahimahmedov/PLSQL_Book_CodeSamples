set echo on serverout on
DECLARE
  v_sql   VARCHAR2(200);
  v_table VARCHAR2(200) := 'emp';
  v_cnt   INTEGER;
BEGIN
  v_sql := 'select count(0) from '||v_table;
  EXECUTE immediate v_sql INTO v_cnt;
  dbms_output.put_line(v_cnt);
EXCEPTION
WHEN OTHERS THEN
  dbms_output.put_line('SQLCODE: '||SQLCODE);
  dbms_output.put_line('SQLERRM: '||SQLERRM(SQLCODE));
  dbms_output.put_line('======================================================');
  dbms_output.put_line('format_error_stack:');
  dbms_output.put_line(dbms_utility.format_error_stack);
  dbms_output.put_line('======================================================');
  dbms_output.put_line('format_error_backtrace:');
  dbms_output.put_line(dbms_utility.format_error_backtrace);
END;
/
