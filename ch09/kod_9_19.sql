DECLARE
  TYPE t_table IS TABLE OF INTEGER;
  TYPE t_varray IS varray(10) OF INTEGER;
  v_table t_table;
  v_varray t_varray;
BEGIN 
  BEGIN
    v_table.EXTEND(2); 
  EXCEPTION
    WHEN COLLECTION_IS_NULL THEN
      dbms_output.put_line('v_table -> COLLECTION_IS_NULL xetasi. Inisalizasiya edilmelidir');
    v_table := t_table();
    v_table.EXTEND(2);
  END;
BEGIN
    v_varray.extend(2);
EXCEPTION
  WHEN COLLECTION_IS_NULL THEN
    dbms_output.put_line('v_varray -> COLLECTION_IS_NULL xetasi. Inisalizasiya edilmelidir');
    v_varray := t_varray();
    v_varray.EXTEND(2);
  END;
END;
/
