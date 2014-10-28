DECLARE
  type t_varray IS varray(20) OF VARCHAR(200);
  TYPE t_table IS TABLE OF VARCHAR2(200);
  TYPE t_asc_array IS TABLE OF VARCHAR2(200) INDEX BY VARCHAR2(20);
  v_varray t_varray := t_varray('aa', 'bb', 'cc', 'dd', 'ee', 'ff');
  v_table t_table   := t_table('aa', 'bb', 'cc', 'dd', 'ee', 'ff'); 
BEGIN
  dbms_output.put_line('v_array: '||v_varray.LIMIT);
  dbms_output.put_line('v_table: '||v_table.LIMIT);
END;
/
