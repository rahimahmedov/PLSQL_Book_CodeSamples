set echo on serverout on
declare 
  TABLE_VIEW_NOTEXISTS exception;
  pragma exception_init(TABLE_VIEW_NOTEXISTS, -942);
  v_sql varchar2(200);
  v_table varchar2(200) := 'emp';
  v_cnt integer;
begin
  v_sql := 'select count(0) from '||v_table; 
  execute immediate v_sql into v_cnt;
  dbms_output.put_line(v_cnt);
exception 
  when TABLE_VIEW_NOTEXISTS then
    dbms_output.put_line('Bele cedvel yoxdur '||v_table);
end;
/
