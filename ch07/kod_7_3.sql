DECLARE
   var_a   VARCHAR2 (100);
BEGIN
   var_a := 'book helps to get the best knowledge';
   DBMS_OUTPUT.PUT_LINE (var_a);
DBMS_OUTPUT.PUT_LINE (INITCAP (var_a));
END;
/
