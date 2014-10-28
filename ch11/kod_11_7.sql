BEGIN
   MERGE INTO emp e
     USING dept d
        ON (e.deptno = d.deptno)
   WHEN MATCHED
   THEN
     UPDATE SET sal = sal + sal * 0.20
   WHEN NOT MATCHED
   THEN
      INSERT  (empno,
               ename,
	       job,
	       mgr,
               hiredate,
               sal,
               comm,
               deptno)
       VALUES (8125,
               'BOB',
               'ANALYST',
               7566,
               SYSDATE,
               '2500',
               10,
               10);
END;
/
