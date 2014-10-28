set serverout on echo on
DECLARE
   CURSOR cur_emp_name IS
      SELECT ename FROM scott.emp
       WHERE empno > 7369 and ROWNUM < 6;
   TYPE names_type IS VARRAY(5) OF scott.emp.ename%TYPE;
   v_name      names_type := names_type();
   v_counter   NUMBER := 0;
BEGIN
   v_name.extend(5);
   FOR i IN cur_emp_name
   LOOP
      v_counter := v_counter + 1;
      v_name (v_counter) := i.ename;
      DBMS_OUTPUT.Put_line ('Name is ' || v_name(v_counter));
   END LOOP;
END;
/
