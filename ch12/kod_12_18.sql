CREATE OR REPLACE PROCEDURE read_cursor(
    p_cur IN sys_refcursor)
AS
  v_name employees.first_name%type;
  v_sal employees.salary%type;
BEGIN
  LOOP
    FETCH p_cur INTO v_name, v_sal;
    dbms_output.put_line(v_name||'->'||v_sal);
    EXIT WHEN p_cur%notfound;
  END LOOP;
END;
/
DECLARE
  v_cur sys_refcursor;
BEGIN
  OPEN v_cur FOR SELECT first_name, salary FROM employees WHERE rownum < 6;
  read_cursor(v_cur);
  CLOSE v_cur;
END;
/
