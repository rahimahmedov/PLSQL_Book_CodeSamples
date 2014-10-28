DECLARE
   var_a   NUMBER;
BEGIN
   var_a := 5;
   IF var_a > 0
   THEN
     DBMS_OUTPUT.put_line ('Positive'); 
   END IF;
END;
/
