DECLARE
   var_str   VARCHAR2 (50);
BEGIN
   var_str := 'Test';
   UPDATE scott.emp
      SET empno = NULL WHERE empno > 1876;
EXCEPTION
   WHEN OTHERS
     THEN 
       DECLARE
         var_str   VARCHAR2 (50) := 'Production';
       BEGIN
         DBMS_OUTPUT.PUT_LINE ('Update is not possible'); 
         DBMS_OUTPUT.PUT_LINE ('Please try other operations '
				|| var_str || ' is not possible');
       END; 
END;
/
