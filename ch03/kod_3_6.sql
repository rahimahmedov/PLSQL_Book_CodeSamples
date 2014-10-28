DECLARE
  var_a NUMBER; 
  var_b BOOLEAN;
BEGIN
  var_a := 5;
  var_b := var_a > 0;
  IF var_b OR var_a IS NOT NULL 
  THEN
    DBMS_OUTPUT.put_line ('It is not negative'); 
  END IF;
  IF var_b THEN
    DBMS_OUTPUT.put_line ('It is Positive'); 
  END IF;
END; 
/
