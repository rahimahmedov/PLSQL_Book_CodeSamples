DECLARE
  v_lastname my_employees.last_name%type;
  v_firstname my_employees.first_name%type;
  CURSOR c_cur IS
    SELECT last_name, first_name FROM my_employees WHERE rownum <= 5;
BEGIN
  OPEN c_cur;
  LOOP
    FETCH c_cur INTO v_lastname, v_firstname;
    dbms_output.put_line(v_firstname||' '||v_lastname);
    EXIT WHEN c_cur%notfound;
  END LOOP;
  CLOSE c_cur;
END;
/
