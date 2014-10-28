DECLARE
   var_a   VARCHAR2 (100);
BEGIN
   var_a := 'IT WAS IN CAPS';
   DBMS_OUTPUT.PUT_LINE (var_a);
   var_a := LOWER (var_a);
   DBMS_OUTPUT.PUT_LINE ('But now: ' || var_a);
END;
/
