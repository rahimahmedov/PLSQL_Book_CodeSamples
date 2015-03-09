CREATE OR REPLACE PROCEDURE get_emp_list AS
  v_cur1 sys_refcursor;
  v_cur2 sys_refcursor;
BEGIN
  OPEN v_cur1 FOR SELECT * FROM employees where rownum < 6 order by employee_id asc;
  dbms_sql.return_result(v_cur1);
  OPEN v_cur2 FOR SELECT * FROM employees where rownum < 6 order by employee_id desc;
  dbms_sql.return_result(v_cur2);
END;
/

DECLARE
  v_exec_result INTEGER;
  v_cursor_id   INTEGER;
  v_ret_cursor sys_refcursor;
  v_ret_rowsemp employees%rowtype;
BEGIN
  v_cursor_id := dbms_sql.open_cursor(true);
  dbms_sql.parse(v_cursor_id, 'begin get_emp_list; end;', DBMS_SQL.NATIVE);
  v_exec_result := DBMS_SQL.EXECUTE(v_cursor_id);
  LOOP
    BEGIN
      DBMS_SQL.GET_NEXT_RESULT(v_cursor_id, v_ret_cursor);
    EXCEPTION
      WHEN no_data_found THEN
        EXIT;
    END;
    LOOP
      FETCH v_ret_cursor INTO v_ret_rowsemp;
      EXIT WHEN v_ret_cursor%notfound;
      dbms_output.put_line(v_ret_rowsemp.first_name||' '||v_ret_rowsemp.salary);
    END LOOP;
    CLOSE v_ret_cursor;
  END LOOP;
END;
/
