DECLARE
  v_cnt INTEGER;
BEGIN
  UPDATE employees SET salary = salary * 2.5;
  SELECT COUNT(0) INTO v_cnt FROM employees;
END; 
/
