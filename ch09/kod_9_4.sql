DECLARE
   TYPE dept_desc IS RECORD
   (
      name       VARCHAR2 (150),
      location   VARCHAR2 (150)
   );
   TYPE emp_desc IS RECORD
   (
      empno   NUMBER,
      name    VARCHAR2 (150),
      job     VARCHAR2 (150),
      dept    dept_desc
   );
   emp_row   emp_desc;
BEGIN
   SELECT e.empno,
          e.ename,
          e.job,
          D.DNAME,
          d.loc
     INTO emp_row.empno,
          emp_row.name,
          emp_row.job,
          emp_row.dept.name,
          emp_row.dept.location
     FROM scott.emp e, scott.dept d
    WHERE E.DEPTNO = D.DEPTNO AND empno = 7782;
   DBMS_OUTPUT.PUT_LINE ('Employee number is: ' ||
   emp_row.empno);
   DBMS_OUTPUT.PUT_LINE ('Name is: ' || emp_row.name);
   DBMS_OUTPUT.PUT_LINE ('Job Position: ' || emp_row.job);
   DBMS_OUTPUT.PUT_LINE ('Department Name: ' ||
   emp_row.dept.name);
   DBMS_OUTPUT.PUT_LINE ('Department Name: ' ||
   emp_row.dept.location);
END;
/
