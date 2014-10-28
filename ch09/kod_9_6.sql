DECLARE
   CURSOR cur_emp_name
   IS
      SELECT ename
        FROM scott.emp
       WHERE empno > 7369;
   TYPE names_type IS TABLE OF scott.emp.ename%TYPE
      INDEX BY BINARY_INTEGER;
   v_name      names_type;
   v_counter   NUMBER := 0;
BEGIN
   FOR i IN cur_emp_name
   LOOP
      v_counter := v_counter + 1;
      v_name (v_counter) := i.ename;
      DBMS_OUTPUT.Put_line ('Name is ' || v_name (v_counter));
   END LOOP;
END;
/
