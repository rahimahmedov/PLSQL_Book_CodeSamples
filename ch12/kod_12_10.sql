DECLARE
  v_firstname  VARCHAR2(200);
  v_newsal     INTEGER;
  v_factor_cur INTEGER;
  v_factor     INTEGER;
  CURSOR c_cur (p_factor INTEGER, p_rownum INTEGER DEFAULT 5) IS
    SELECT first_name, salary*p_factor AS new_salary, p_factor
      FROM my_employees
     WHERE rownum <= p_rownum;
BEGIN
  v_factor := 5;
  OPEN c_cur(v_factor);
  LOOP
    FETCH c_cur INTO v_firstname, v_newsal, v_factor_cur;
    EXIT WHEN c_cur%NOTFOUND;
    dbms_output.put_line(v_firstname||' '||v_newsal||' '||v_factor_cur);
  END LOOP;
  CLOSE c_cur;
  v_factor := v_factor +4;
  FOR i IN c_cur(v_factor, 3)
  LOOP
    dbms_output.put_line(i.first_name||' '||i.new_salary||' '||i.p_factor);
  END LOOP;
END;
/
