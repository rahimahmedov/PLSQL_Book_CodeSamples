set echo on set feedback on
DECLARE
  TYPE t_table IS TABLE OF VARCHAR2(200);
  v_table t_table   := t_table('aa', 'bb', 'cc', 'dd', 'ee', 'ff', 'gg');
  v_pos INTEGER := 0;
BEGIN
  dbms_output.put_line(
    'v_table silmekden once: PRIOR(4):'||
     v_table.PRIOR(4)||' NEXT(4):'||v_table.NEXT(4));
  v_table.delete(3,5);
  dbms_output.put_line(
    'v_table silmekden sonra: PRIOR(4):'||
     v_table.PRIOR(4)||' NEXT(4):'||v_table.NEXT(4));
  dbms_output.put_line('Massiv elementleri siyahisi FIRST ve LAST metodlarla:');
  FOR i IN v_table.FIRST .. v_table.LAST
  LOOP
    dbms_output.put_line('  '||i||'->'||
      CASE WHEN v_table.EXISTS(i) THEN v_table(i) ELSE NULL END);
  END LOOP;
  dbms_output.put_line('Massiv elementleri siyahisi NEXT metodla:');
  LOOP
    v_pos := v_table.NEXT(v_pos);
    EXIT WHEN v_pos IS NULL;
    dbms_output.put_line('  '||v_pos||'->'||v_table(v_pos));
  END LOOP;
END;
/
