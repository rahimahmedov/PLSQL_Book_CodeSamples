DECLARE
   v_sal   VARCHAR2 (100);
BEGIN
   v_sal := '$1,600.00';
   DBMS_OUTPUT.PUT_LINE (TO_NUMBER (v_sal, '$9,999.00'));
END; 
/
