DECLARE
   var_a   NUMBER;
BEGIN
   var_a := 50;
   LOOP
      IF var_a < 0
      THEN
         GOTO first_rec;
      ELSE
         var_a := var_a - 10;
      END IF;
   END LOOP;
   <<first_rec>>
   DBMS_OUTPUT.PUT_LINE (var_a); 
   DBMS_OUTPUT.PUT_LINE ('EXIT from the LOOP');
END;
/
