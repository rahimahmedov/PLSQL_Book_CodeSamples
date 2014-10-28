DECLARE
   var_a   NUMBER;
   var_b   NUMBER;
BEGIN
   var_a := 5;
   CASE
      WHEN var_a > 0
      THEN
         var_b := var_a * 10;
      WHEN var_a < 0
      THEN
         var_b := var_a * 100;
      WHEN var_a IS NULL
      THEN
         var_b := var_a * 1000;
      ELSE
         var_b := 0;
   END CASE;
   DBMS_OUTPUT.PUT_LINE (var_b); 
END;
/
