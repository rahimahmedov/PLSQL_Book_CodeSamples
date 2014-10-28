DECLARE
   var_a   VARCHAR2 (100);
   var_b   VARCHAR2 (100);
BEGIN
   var_a := 'I like';
   var_b := ' to read books';
   DBMS_OUTPUT.PUT_LINE (var_a || var_b);
END;
/
