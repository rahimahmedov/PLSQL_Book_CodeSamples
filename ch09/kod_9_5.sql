DECLARE
  v_emp_row employees%rowtype;
BEGIN
  v_emp_row.employee_id := 9999;
  v_emp_row.last_name   := 'Ahmedov';
  v_emp_row.email       := 'RAHMADOV';
  v_emp_row.hire_date   := sysdate-60;
  v_emp_row.job_id      := 'IT_PROG';
  INSERT INTO employees VALUES v_emp_row; 
  v_emp_row.salary := 1000; 
  v_emp_row.department_id := 60;
  UPDATE employees SET ROW = v_emp_row
    WHERE employee_id = 9999;
END; 
/
