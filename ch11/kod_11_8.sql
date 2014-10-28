BEGIN
   UPDATE scott.emp
      SET sal = sal + sal * 0.10 WHERE sal < 1500;
   DBMS_OUTPUT.PUT_LINE (SQL%ROWCOUNT);
END; 
/
