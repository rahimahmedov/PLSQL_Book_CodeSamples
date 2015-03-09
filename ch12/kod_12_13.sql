DECLARE
  TYPE t_record IS RECORD (
    first_name employees.first_name%TYPE,
    salary employees.salary%TYPE);
  TYPE t_cursor IS REF CURSOR RETURN t_record;
  v_cur t_cursor;
  v_row t_record;
BEGIN
  OPEN v_cur FOR SELECT first_name, salary FROM employees WHERE ROWNUM <= 5;
  LOOP
    FETCH v_cur INTO v_row;
    EXIT WHEN v_cur%notfound;
    dbms_output.put_line(v_row.first_name||' '||v_row.salary);
  END LOOP;
  CLOSE v_cur;
END;
/
