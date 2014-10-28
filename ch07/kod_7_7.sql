DECLARE
   var_a   VARCHAR2 (100);
BEGIN
var_a := 'BlackCat'; 
DBMS_OUTPUT.PUT_LINE (INSTR (var_a, 'C'));
DBMS_OUTPUT.PUT_LINE (INSTR (var_a,
                                'a',
                                 1,
                                2));
   DBMS_OUTPUT.PUT_LINE (INSTR (var_a,'a', 5, 1));
END; 
/
