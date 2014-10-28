DECLARE
  TYPE t_table IS TABLE OF INTEGER;
  TYPE t_varray IS VARRAY(10) OF INTEGER;
  v_table t_table := t_table(1,2,3,4,5,6);
  v_varray t_varray := t_varray(1,2,3,4,5,6);
BEGIN 
  BEGIN
    dbms_output.put_line(v_table(-1));
  EXCEPTION
    WHEN SUBSCRIPT_OUTSIDE_LIMIT THEN
      dbms_output.put_line('v_table -> SUBSCRIPT_OUTSIDE_LIMIT xetasi.');
  END; 
  BEGIN
    dbms_output.put_line(v_varray(-1));
  EXCEPTION
    WHEN SUBSCRIPT_OUTSIDE_LIMIT THEN
      dbms_output.put_line('v_varray -> SUBSCRIPT_OUTSIDE_LIMIT xetasi.');
  END; 
  BEGIN
    dbms_output.put_line(v_varray(11));
  EXCEPTION
    WHEN SUBSCRIPT_OUTSIDE_LIMIT THEN
      dbms_output.put_line('v_varray -> SUBSCRIPT_OUTSIDE_LIMIT xetasi.');
  END; 
END;
/
