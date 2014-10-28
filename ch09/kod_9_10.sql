DECLARE
  TYPE t_nested_typ IS TABLE OF NUMBER;
  v_nt1 t_nested_typ := t_nested_typ(1,2,3);
  v_nt2 t_nested_typ := t_nested_typ(3,2,1);
  v_nt3 t_nested_typ := t_nested_typ(2,3,1,3);
  v_nt4 t_nested_typ := t_nested_typ(1,2,4);
  v_answer t_nested_typ;
  PROCEDURE print_nested_table(p_oper_name VARCHAR, p_the_nt t_nested_typ) IS
    v_output VARCHAR2(128);
  BEGIN
    IF p_the_nt IS NULL THEN
      DBMS_OUTPUT.PUT_LINE(p_oper_name||': <NULL>');
      RETURN;
    END IF;
    IF p_the_nt.COUNT = 0 THEN
      DBMS_OUTPUT.PUT_LINE(p_oper_name||': bos coxluq');
      RETURN;
    END IF;
    FOR i IN p_the_nt.FIRST .. p_the_nt.LAST
    LOOP
      v_output := v_output || p_the_nt(i) || ' ';
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(p_oper_name||': ' || v_output);
  END; 
BEGIN
  v_answer := v_nt1 MULTISET UNION v_nt4; 
  print_nested_table('MULTISET UNION', v_answer);
  v_answer := v_nt1 MULTISET UNION v_nt3; 
  print_nested_table('MULTISET UNION', v_answer);
  v_answer := v_nt1 MULTISET UNION DISTINCT v_nt3; 
  print_nested_table('MULTISET UNION DISTINCT', v_answer); 
  v_answer := v_nt2 MULTISET INTERSECT v_nt3; 
  print_nested_table('MULTISET INTERSECT', v_answer); 
  v_answer := v_nt2 MULTISET INTERSECT DISTINCT v_nt3; 
  print_nested_table('MULTISET INTERSECT DISTINCT', v_answer);
  v_answer := SET(v_nt3);
  print_nested_table('SET', v_answer);
  v_answer := v_nt3 MULTISET EXCEPT v_nt2; 
  print_nested_table('MULTISET EXCEPT', v_answer); 
  v_answer := v_nt3 MULTISET EXCEPT DISTINCT v_nt2; 
  print_nested_table('MULTISET EXCEPT DISTINCT', v_answer);
END;
/
