DECLARE
  TYPE t_varray IS VARRAY(20) OF VARCHAR(200);
  TYPE t_table IS TABLE OF VARCHAR2(200);
  v_varray t_varray := t_varray('aa', 'bb', 'cc', 'dd', 'ee', 'ff');
  v_table t_table   := t_table('xx', 'yy', 'zz', 'vv', 'ww', 'uu');
  PROCEDURE print_collections IS
    v_pos_int INTEGER;
    v_pos_str VARCHAR2(200);
  BEGIN
    dbms_output.put('v_varray => ');
    v_pos_int := 0;
    LOOP
      v_pos_int := v_varray.NEXT(v_pos_int);
      EXIT WHEN v_pos_int IS NULL;
      dbms_output.put(' '||v_varray(v_pos_int));
    END LOOP;
    dbms_output.new_line;
    dbms_output.put('v_table => ');
    v_pos_int := 0;
    LOOP
      v_pos_int := v_table.NEXT(v_pos_int);
      EXIT WHEN v_pos_int IS NULL;
      dbms_output.put(' '||v_table(v_pos_int));
    END LOOP;
    dbms_output.new_line;
  END;
BEGIN
  dbms_output.put_line('SILMEKDEN ONCE'); 
  print_collections;
  v_varray.TRIM(3);
  v_table.TRIM(3); 
  dbms_output.put_line('SILDIKDEN SONRA'); 
  print_collections;
END;
/
