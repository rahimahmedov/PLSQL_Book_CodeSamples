DECLARE
  CURSOR c_cur IS
    SELECT department_id, department_name, 
           CURSOR (SELECT first_name, salary
                     FROM employees e
                    WHERE e.department_id = d.department_id AND 
                          ROWNUM < 6) emp_cursor
      FROM DEPARTMENTS d
     WHERE ROWNUM < 6 AND department_id < 100;
  v_cur     sys_refcursor;
  v_depid   departments.department_id%type;
  v_depname departments.department_name%type;
  v_name    employees.first_name%type;
  v_sal     employees.salary%type;
BEGIN
  OPEN c_cur;
  LOOP
    FETCH c_cur INTO v_depid, v_depname, v_cur;
    EXIT WHEN c_cur%notfound;
    dbms_output.put_line(v_depid||'. '||v_depname||':');
    LOOP
      FETCH v_cur INTO v_name, v_sal;
      EXIT WHEN v_cur%notfound;
      dbms_output.put_line('  '||v_name||'->'||v_sal);
    END LOOP;
  END LOOP;
  CLOSE c_cur;
END;
/
