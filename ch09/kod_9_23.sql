DECLARE
  TYPE t_table IS TABLE OF INTEGER;
  TYPE t_varray IS VARRAY(10) OF INTEGER;
  TYPE t_asc_array IS TABLE OF INTEGER INDEX BY PLS_INTEGER;
  v_table t_table := t_table(1,2,3,4,5,6);
  v_varray t_varray := t_varray(1,2,3,4,5,6);
  v_asc_array t_asc_array;
BEGIN 
  BEGIN
    dbms_output.put_line(v_table('k'));
  EXCEPTION
    WHEN VALUE_ERROR THEN
      dbms_output.put_line('v_table -> VALUE_ERROR xetasi.');
  END;
  BEGIN
    dbms_output.put_line(v_varray('b'));
  EXCEPTION
    WHEN VALUE_ERROR THEN
      dbms_output.put_line('v_varray -> VALUE_ERROR xetasi.');
  END;
  BEGIN
    dbms_output.put_line(v_asc_array('c'));
  EXCEPTION
    WHEN VALUE_ERROR THEN
      dbms_output.put_line('v_asc_array -> VALUE_ERROR xetasi.');
  END;
END;
/
