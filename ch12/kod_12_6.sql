DECLARE
  v_rec my_employees%ROWTYPE;
  CURSOR c_cur IS
    SELECT * FROM my_employees WHERE rownum <= 5;
BEGIN
  OPEN c_cur;
  LOOP
    FETCH c_cur INTO v_rec;
    dbms_output.put_line(v_rec.first_name||' '||v_rec.last_name);
    EXIT WHEN c_cur%NOTFOUND;
  END LOOP;
  CLOSE c_cur;
END;
/
