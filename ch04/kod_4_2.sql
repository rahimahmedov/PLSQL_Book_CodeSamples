DECLARE
   var_a   NUMBER;
BEGIN
   var_a := 50;
   LOOP
      var_a := var_a + 10;
      EXIT WHEN var_a > 1000;
   END LOOP;
   DBMS_OUTPUT.PUT_LINE (var_a);
END;
/
