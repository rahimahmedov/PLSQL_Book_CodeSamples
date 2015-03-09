DECLARE
  CURSOR c_cur IS
    SELECT * FROM my_employees WHERE rownum <= 5;
BEGIN
  FOR i IN c_cur
  LOOP
    dbms_output.put_line(i.first_name||' '||i.salary);
  END LOOP;
END;
/
