BEGIN
  INSERT INTO departments VALUES
    (1000, 'New Department', NULL, 1700);
  DELETE FROM departments WHERE department_id = 10;
EXCEPTION
WHEN OTHERS THEN
  dbms_output.put_line('Error! '||SQLERRM);
  dbms_output.put_line('Comitting...');
  COMMIT;
END;
/
