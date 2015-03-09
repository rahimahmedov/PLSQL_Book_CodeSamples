DECLARE
  v_firstname  VARCHAR2(200);
  v_newsal     INTEGER;
  v_factor_cur INTEGER;
  v_factor     INTEGER;
  CURSOR c_cur
  IS
    SELECT first_name, salary*v_factor, v_factor
     FROM my_employees
    WHERE rownum <= 5;
BEGIN
  v_factor := 5;
  OPEN c_cur;
  LOOP
    v_factor := v_factor +1;
    FETCH c_cur INTO v_firstname, v_newsal, v_factor_cur;
    dbms_output.put_line(v_firstname||' '||v_newsal||' '||v_factor_cur);
    EXIT WHEN c_cur%NOTFOUND;
  END LOOP;
  CLOSE c_cur;
  OPEN c_cur;
  LOOP
    FETCH c_cur INTO v_firstname, v_newsal, v_factor_cur;
    dbms_output.put_line(v_firstname||' '||v_newsal||' '||v_factor_cur);
    EXIT WHEN c_cur%NOTFOUND;
  END LOOP;
  CLOSE c_cur;
END;
/
