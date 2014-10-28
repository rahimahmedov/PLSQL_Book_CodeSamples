DECLARE
   v_sal   NUMBER;
BEGIN
   v_sal := 5000;
   DBMS_OUTPUT.PUT_LINE (TO_CHAR (v_sal, '$999999'));
END;
/
