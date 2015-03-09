CREATE TABLE my_employees AS SELECT * FROM employees;
DECLARE
  v_lastname my_employees.last_name%type;
  FUNCTION getBoolean(p BOOLEAN) RETURN VARCHAR2 IS
  BEGIN
    IF p THEN
      RETURN 'TRUE';
    elsif NOT p THEN
      RETURN 'FALSE';
    END IF;
  END;
  PROCEDURE printCursorAttributes IS
  BEGIN
    dbms_output.put_line('   SQL%ISOPEN: '||getBoolean(sql%isopen));
    dbms_output.put_line('   SQL%FOUND: '||getBoolean(sql%found));
    dbms_output.put_line('   SQL%NOTFOUND: '||getBoolean(sql%notfound));
    dbms_output.put_line('   SQL%ROWCOUNT: '||sql%ROWCOUNT);
  END;
BEGIN
  dbms_output.put_line('for UPDATE cursors ...');
  UPDATE my_employees SET salary = salary *10 WHERE employee_id < 110;
  printCursorAttributes;
  dbms_output.put_line('for INSERT cursors ...');
  INSERT INTO my_employees (employee_id, last_name, email, hire_date, job_id)
    SELECT 1000+employee_id, last_name, 'db_'||email, hire_date, job_id
      FROM employees WHERE employee_id < 110;
  printCursorAttributes;
  dbms_output.put_line('for DELETE cursors ...');
  DELETE my_employees WHERE employee_id < 110 AND manager_id IS NOT NULL;
  printCursorAttributes;
  dbms_output.put_line('for SELECT INTO cursors ...');
  SELECT last_name INTO v_lastname FROM my_employees WHERE rownum =1;
  printCursorAttributes;
  dbms_output.put_line('for SELECT multiline cursors ...');
  FOR i IN (SELECT * FROM my_employees WHERE employee_id < 110)
  LOOP
    printCursorAttributes;
  END LOOP;
  dbms_output.put_line('after SELECT multiline cursors ...');
  printCursorAttributes;
  ROLLBACK;
END;
/
