DECLARE
   var_a   NUMBER;
BEGIN
   var_a := 50;
   LOOP
      IF var_a < 0
      THEN 
        EXIT;
      ELSE
         var_a := var_a - 10;
      END IF;
   END LOOP;
   DBMS_OUTPUT.PUT_LINE (var_a);
END;
/
