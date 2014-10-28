DECLARE
   var_a   NUMBER;
BEGIN
   var_a := 0;
   IF var_a > 0
   THEN
     DBMS_OUTPUT.put_line ('Positive'); 
   ELSE
      IF var_a < 0
      THEN
        DBMS_OUTPUT.put_line ('Negative'); 
      ELSE
        DBMS_OUTPUT.put_line ('Zero'); 
      END IF;
   END IF; 
END;
/
