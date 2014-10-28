DECLARE
   var_a   NUMBER;
BEGIN
   var_a := 3000;
   FOR i IN REVERSE 1 .. 100
   LOOP
      IF MOD (i, 2) = 0
      THEN
         CONTINUE;
      END IF;
      var_a := var_a - i;
   END LOOP;
   DBMS_OUTPUT.put_line (var_a); 
END;
/
