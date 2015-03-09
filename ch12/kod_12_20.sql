DECLARE
  CURSOR c_cur IS
    SELECT ROWID, salary FROM employees WHERE ROWNUM < 6 FOR UPDATE;
  v_rowid ROWID;
  v_sal employees.salary%TYPE;
BEGIN
  OPEN c_cur;
  LOOP
    FETCH c_cur INTO v_rowid, v_sal;
    EXIT WHEN c_cur%notfound;
    dbms_output.put('before: '||v_sal);
    UPDATE employees SET salary=salary *1.5 WHERE CURRENT OF c_cur;
    SELECT salary INTO v_sal FROM employees WHERE rowid = v_rowid;
    dbms_output.put_line(' after: '||v_sal);
  END LOOP;
  CLOSE c_cur;
END;
/
rollback;
