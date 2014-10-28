declare
  v_clob clob;
  v_char varchar2(30000);
begin
  v_clob := 'Test text test etx test text tt ee fgt. ';
  loop
    v_clob := v_clob || v_clob;
    exit when length(v_clob) > 10000;
  end loop;
  v_char := v_clob;
  dbms_output.put_line('Length of v_char: '||length(v_char));
  v_clob := v_clob || v_clob || v_clob ||v_clob ||v_clob;
  dbms_output.put_line('Length of v_clob: '||length(v_clob));
  v_char := v_clob;
  dbms_output.put_line('Length of v_char: '||length(v_char));
end;
/
