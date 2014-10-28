DECLARE
   var_a   NUMBER;
   var_b   NUMBER;
BEGIN
   var_a := 5;
   CASE var_a
      WHEN 5
      THEN
         var_b := var_a * 10;
      WHEN 50 THEN
         var_b := var_a * 100;
      WHEN 500
      THEN
         var_b := var_a * 1000;
      ELSE
         var_b := 0;
   END CASE;
   DBMS_OUTPUT.PUT_LINE (var_b);
END;
/
