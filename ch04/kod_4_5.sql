DECLARE
   var_a   NUMBER;
   var_b   NUMBER;
BEGIN
   var_a := 30;
   FOR cur IN (SELECT empno, ename, sal FROM scott.emp)
   LOOP
      DBMS_OUTPUT.PUT_LINE (
         'Old salary for ' || cur.ename || ' was equal to' || cur.sal);
      UPDATE scott.emp
         SET sal = NVL (cur.sal, 0) + var_a
       WHERE empno = cur.empno;
      var_b := NVL (cur.sal, 0) + var_a;
    DBMS_OUTPUT.PUT_LINE (
    'New salary for ' || cur.ename || ' is equal to' || var_b);
      var_b := 0;
   END LOOP;
   COMMIT; 
END;
/
