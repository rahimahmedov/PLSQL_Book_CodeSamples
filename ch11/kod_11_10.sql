DECLARE
   v_bonus   SCOTT.EMP.COMM%TYPE;
   v_hire_days SCOTT.EMP.HIREDATE%TYPE;
BEGIN
   FOR rec IN (SELECT * FROM SCOTT.EMP)
   LOOP
         UPDATE SCOTT.EMP
            SET COMM = sal / 12
          WHERE hiredate = (SELECT MAX (hiredate)
                            FROM SCOTT.EMP)
      RETURNING COMM, hiredate
           INTO v_bonus, v_hire_days;
      DBMS_OUTPUT.PUT_LINE (
         'BONUS ' || v_bonus || ' AZN is given for ' ||
         v_hire_days || ' days');
   END LOOP;
END;
/
