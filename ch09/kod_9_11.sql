DECLARE
   TYPE t_dnames_tab IS TABLE OF VARCHAR2(30);
   v_dept_names1 t_dnames_tab :=
     t_dnames_tab('Shipping','Sales','Finance','Payroll');
   v_dept_names2 t_dnames_tab :=
     t_dnames_tab('Sales','Finance','Shipping','Payroll');
   v_dept_names3 t_dnames_tab :=
     t_dnames_tab('Sales','Finance','Payroll');
BEGIN
   IF v_dept_names1 = v_dept_names2 THEN
     DBMS_OUTPUT.PUT_LINE
      ('v_dept_names1 ve v_dept_names2 eyni elementlere sahibdir.');
   END IF;
   IF v_dept_names2 != v_dept_names3 THEN
      DBMS_OUTPUT.PUT_LINE('v_dept_names2 ve v_dept_names3 ferqli elementlere sahibdir.');
   END IF; 
END;
/
