DECLARE
   var_a   VARCHAR2 (100);
BEGIN
   var_a := 'BlackCat';
   DBMS_OUTPUT.PUT_LINE (SUBSTR (var_a, 1, 5));
   DBMS_OUTPUT.PUT_LINE (SUBSTR (var_a, -3));
   DBMS_OUTPUT.PUT_LINE (SUBSTR (var_a, 2, 4));
END;
/
