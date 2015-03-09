CREATE OR REPLACE PACKAGE pkg_cursor_type
AS
  TYPE t_record IS RECORD(
    name employees.first_name%TYPE,
    salary employees.salary%TYPE);
  TYPE t_cursor IS REF CURSOR RETURN t_record;
END;
/
CREATE OR REPLACE PROCEDURE open_and_read(
    p_cur IN OUT pkg_cursor_type.t_cursor)
AS
  v_ret pkg_cursor_type.t_record;
BEGIN
  OPEN p_cur FOR SELECT first_name, salary FROM employees WHERE ROWNUM < 4;
  LOOP
    FETCH p_cur INTO v_ret;
    dbms_output.put_line(v_ret.name||'->'||v_ret.salary);
    EXIT WHEN p_cur%notfound;
  END LOOP;
END;
/
DECLARE
  v_cur pkg_cursor_type.t_cursor;
BEGIN
  dbms_output.put_line('v_cur is '||CASE WHEN v_cur%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  open_and_read(v_cur);
  dbms_output.put_line('v_cur is '||CASE WHEN v_cur%isopen THEN 'OPEN' ELSE 'CLOSE' END);
  CLOSE v_cur;
END;
/
