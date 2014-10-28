BEGIN
  INSERT INTO departments VALUES
    (1100, 'New Department 2', NULL, 1700);
  SAVEPOINT sp;
  DELETE FROM departments WHERE department_id = 1000;
  DELETE FROM departments WHERE department_id = 10;
EXCEPTION
WHEN OTHERS THEN
  dbms_output.put_line('Error! '||SQLERRM);
  dbms_output.put_line('Rolling back to savepoint sp...');
  ROLLBACK WORK TO SAVEPOINT sp;
END;
/
