DECLARE
  TYPE t_varray IS VARRAY(20) OF VARCHAR(200);
  TYPE t_table IS TABLE OF VARCHAR2(200);
  TYPE t_asc_array IS TABLE OF VARCHAR2(200) INDEX BY VARCHAR2(20);
  v_varray t_varray := t_varray('aa', 'bb', 'cc', 'dd', 'ee', 'ff');
  v_table t_table   := t_table('aa', 'bb', 'cc', 'dd', 'ee', 'ff');
  v_asc_array t_asc_array;
BEGIN
  v_asc_array('key1') := 'aa'; v_asc_array('key2') := 'bb';
  v_asc_array('key3') := 'cc'; v_asc_array('key4') := 'dd';
  v_asc_array('key5') := 'ee'; v_asc_array('key6') := 'ff';
  IF v_asc_array.EXISTS('key3') THEN 
    dbms_output.put_line('key3 indeksli element movcuddur');
  END IF;
  IF v_table.EXISTS(3) THEN
    dbms_output.put_line('3 indeksli element movcuddur');
  END IF;
  IF v_varray.EXISTS(3) THEN
    dbms_output.put_line('3 indeksli element movcuddur');
  END IF; 
END;
/
