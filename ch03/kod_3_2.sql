DECLARE
   var_a   NUMBER;
BEGIN
   var_a := 5;
   IF var_a > 0 AND var_a IS NOT NULL
   THEN
     DBMS_OUTPUT.put_line ('It is not negative'); 
   END IF;
END;
/
