DECLARE
   v_a   NUMBER;
BEGIN
   v_a := '2' || TO_CHAR (1600);
   DBMS_OUTPUT.PUT_LINE (v_a);
END; 
/
