DECLARE
var_a VARCHAR2 (100);
BEGIN
   var_a := 'it was in lowercase';
   DBMS_OUTPUT.PUT_LINE (var_a);
   DBMS_OUTPUT.PUT_LINE ('But now: ' || UPPER (var_a));
END;
/
