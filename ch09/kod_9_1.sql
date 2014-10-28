DECLARE
   row_rec   SCOTT.EMP%ROWTYPE;
BEGIN
   SELECT *
     INTO row_rec
     FROM SCOTT.EMP
    WHERE empno = 7369;
   DBMS_OUTPUT.PUT_LINE ('EMPNO #: ' || row_rec.EMPNO);
   DBMS_OUTPUT.PUT_LINE ('NAME is: ' || row_rec.ENAME);
END;
/
