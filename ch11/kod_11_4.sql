BEGIN
   UPDATE scott.emp
      SET sal = '2500'
    WHERE empno = 7369;
END;
/
