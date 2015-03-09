set serverout on echo on
DECLARE
  CURSOR c_cur IS
    SELECT first_name, salary*10 AS new_salary 
      FROM my_employees
     WHERE rownum <= 5;
BEGIN
  FOR i IN c_cur
  LOOP
    dbms_output.put_line(i.first_name||' '||i.new_salary);
  END LOOP;
END;
/
