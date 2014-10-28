DECLARE
   var_salary NUMBER(4);
   var_dept VARCHAR2 (10) NOT NULL := 'HR Dept';
   con_comm CONSTANT NUMBER (4) := 3592;
BEGIN
   DBMS_OUTPUT.put_line (var_salary);
   DBMS_OUTPUT.put_line (var_dept);
   DBMS_OUTPUT.put_line (con_comm);
END;
/
