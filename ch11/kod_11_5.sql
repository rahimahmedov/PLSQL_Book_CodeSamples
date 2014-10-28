BEGIN
   UPDATE scott.emp
      SET sal = (SELECT 3000 FROM DUAL)
    WHERE empno IN (SELECT empno
                     FROM scott.emp
                    WHERE ename = 'SMITH');
END;
/
