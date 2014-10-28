DECLARE
   CURSOR cur_rec
   IS
      SELECT empno, ename
        FROM SCOTT.EMP
       WHERE empno > 7369;
   row_rec   cur_rec%ROWTYPE;
BEGIN
   OPEN cur_rec;
   LOOP
      FETCH cur_rec INTO row_rec;
      EXIT WHEN cur_rec%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE ('EMPNO #: ' || row_rec.EMPNO);
      DBMS_OUTPUT.PUT_LINE ('NAME is: ' || row_rec.ENAME);
   END LOOP;
END;
/
