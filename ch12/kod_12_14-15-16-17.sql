DECLARE
  TYPE t_cur_week1 IS REF CURSOR;
  TYPE t_cur_week2 IS REF CURSOR;
  v_cur1 t_cur_week1;
  v_cur2 t_cur_week2;
BEGIN
  OPEN v_cur2 FOR SELECT * FROM employees;
  v_cur1 := v_cur2;
  dbms_output.put_line('v_cur1->'||CASE WHEN v_cur1%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  dbms_output.put_line('v_cur2->'||CASE WHEN v_cur2%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  CLOSE v_cur2;
  dbms_output.put_line('v_cur1->'||CASE WHEN v_cur1%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  dbms_output.put_line('v_cur2->'||CASE WHEN v_cur2%isopen THEN 'OPEN' ELSE 'CLOSE' END);
END;
/

DECLARE
  TYPE t_cur_week1 IS REF CURSOR;
  TYPE t_cur_week2 IS REF CURSOR RETURN employees%ROWTYPE;
  v_cur1 t_cur_week1;
  v_cur2 t_cur_week2;
BEGIN
  OPEN v_cur2 FOR SELECT * FROM employees;
  v_cur1 := v_cur2;
  dbms_output.put_line('v_cur1->'||CASE WHEN v_cur1%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  dbms_output.put_line('v_cur2->'||CASE WHEN v_cur2%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  CLOSE v_cur2;
  dbms_output.put_line('v_cur1->'||CASE WHEN v_cur1%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  dbms_output.put_line('v_cur2->'||CASE WHEN v_cur2%isopen THEN 'OPEN' ELSE 'CLOSE' END);
END;
/

DECLARE
  TYPE t_cur_week1 IS REF CURSOR;
  TYPE t_cur_week2 IS REF CURSOR RETURN employees%ROWTYPE;
  v_cur1 t_cur_week1;
  v_cur2 t_cur_week2;
BEGIN
  OPEN v_cur1 FOR SELECT * FROM employees;
  v_cur2 := v_cur1;
  dbms_output.put_line('v_cur1->'||CASE WHEN v_cur1%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  dbms_output.put_line('v_cur2->'||CASE WHEN v_cur2%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  CLOSE v_cur1;
  dbms_output.put_line('v_cur1->'||CASE WHEN v_cur1%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  dbms_output.put_line('v_cur2->'||CASE WHEN v_cur2%isopen THEN 'OPEN' ELSE 'CLOSE' END);
END;
/

DECLARE
  TYPE t_cur_week1 IS REF CURSOR RETURN employees%ROWTYPE;
  TYPE t_cur_week2 IS REF CURSOR RETURN employees%ROWTYPE;
  v_cur1 t_cur_week1;
  v_cur2 t_cur_week2;
BEGIN
  OPEN v_cur1 FOR SELECT * FROM employees;
  v_cur2 := v_cur1;
  dbms_output.put_line('v_cur1->'||CASE WHEN v_cur1%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  dbms_output.put_line('v_cur2->'||CASE WHEN v_cur2%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  CLOSE v_cur1;
  dbms_output.put_line('v_cur1->'||CASE WHEN v_cur1%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  dbms_output.put_line('v_cur2->'||CASE WHEN v_cur2%isopen THEN 'OPEN' ELSE 'CLOSE' END);
END;
/
