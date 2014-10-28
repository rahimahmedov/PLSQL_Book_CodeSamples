DECLARE
   var_a   NUMBER;
   var_b   NUMBER;
BEGIN
   var_a := 300;
   var_b := 3;
   WHILE var_a > 0
   LOOP
      var_a := var_a - var_b;
      var_b := var_b + 3;
   END LOOP;
   DBMS_OUTPUT.put_line (var_a); 
END;
/
