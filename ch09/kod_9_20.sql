set echo on serverout on
DECLARE
  TYPE t_table IS TABLE OF INTEGER;
  TYPE t_asc_array IS TABLE OF INTEGER INDEX BY PLS_INTEGER;
  v_table t_table := t_table(1,2,3,4,5,6);
  v_asc_array t_asc_array;
BEGIN
  BEGIN
    v_table(2) := NULL;
    dbms_output.put_line(NVL(v_table(2), 0));
    v_table.DELETE(2);
    dbms_output.put_line(v_table(2));
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('v_table -> NO_DATA_FOUND xetasi.');
  END;
  BEGIN
    v_asc_array(10) := 10;
    dbms_output.put_line(NVL(v_asc_array(2), 0));
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('v_asc_array -> NO_DATA_FOUND xetasi.');
  END;
END;
/
