DECLARE
   var_a   VARCHAR2 (100);
BEGIN
   DBMS_OUTPUT.PUT_LINE (LPAD ('123456', 9, '*'));
   DBMS_OUTPUT.PUT_LINE (RPAD ('123456', 9, '*'));
   DBMS_OUTPUT.PUT_LINE (LPAD ('123456', 3, '*'));
   DBMS_OUTPUT.PUT_LINE (RPAD ('123456', 3, '*'));
END;
/