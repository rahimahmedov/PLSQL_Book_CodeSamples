DECLARE
  TYPE t_varray IS VARRAY(20) OF VARCHAR(200);
  TYPE t_table IS TABLE OF VARCHAR2(200);
  TYPE t_asc_array IS TABLE OF VARCHAR2(200) INDEX BY VARCHAR2(20);
  v_varray t_varray := t_varray('aa', 'bb', 'cc', 'dd', 'ee', 'ff');
  v_table t_table := t_table('aa', 'bb', 'cc', 'dd', 'ee', 'ff');
  v_asc_array t_asc_array; 
BEGIN
  v_asc_array('key1') := 'aa'; v_asc_array('key2') := 'bb'; 
  v_asc_array('key3') := 'cc'; v_asc_array('key4') := 'dd'; 
  v_asc_array('key5') := 'ee'; v_asc_array('key6') := 'ff';
  dbms_output.put_line('v_varray silmekden once: COUNT:'||v_varray.COUNT|| 
    ' FIRST:'||v_varray.FIRST||' LAST:'||v_varray.LAST);
  v_varray.DELETE; 
  dbms_output.put_line(
    'v_varray silmekden sonra: COUNT:'||v_varray.COUNT|| 
    ' FIRST:'||v_varray.FIRST||' LAST:'||v_varray.LAST);
  dbms_output.put_line(
    'v_table silmekden once: COUNT:'||v_table.COUNT|| 
    ' FIRST:'||v_table.FIRST||' LAST:'||v_table.LAST);
  v_table.DELETE(3,4); 
  dbms_output.put_line(
    'v_table silmekden sonra: COUNT:'||v_table.COUNT|| 
    ' FIRST:'||v_table.FIRST||' LAST:'||v_table.LAST);
  dbms_output.put_line(
    'v_asc_array silmekden once: COUNT:'||v_asc_array.COUNT|| 
    ' FIRST:'||v_asc_array.FIRST||' LAST:'||v_asc_array.LAST);
  v_asc_array.DELETE('key3','key4'); 
  dbms_output.put_line(
    'v_asc_array silmekden sonra: COUNT:'||
    v_asc_array.COUNT||' FIRST:'||v_asc_array.FIRST||
    ' LAST:'||v_asc_array.LAST); 
END;
/
