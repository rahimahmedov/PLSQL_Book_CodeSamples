DECLARE
  TYPE t_cursor IS REF CURSOR;
  v_cur t_cursor;
  v_name employees.first_name%TYPE;
  v_sal employees.salary%TYPE;
BEGIN
  OPEN v_cur FOR SELECT first_name, salary FROM employees WHERE ROWNUM <= 5;
  LOOP
    FETCH v_cur INTO v_name, v_sal;
    EXIT WHEN v_cur%notfound;
    dbms_output.put_line(v_name||' '||v_sal);
  END LOOP;
  CLOSE v_cur;
END;
/
