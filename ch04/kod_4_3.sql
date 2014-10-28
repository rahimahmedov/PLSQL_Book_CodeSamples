DECLARE
   var_a   NUMBER;
BEGIN
   var_a := 3;
   FOR i IN 1 .. 100
   LOOP
      var_a := var_a + i;
   END LOOP;
   DBMS_OUTPUT.put_line (var_a);
END;
/
