DECLARE
   v_row   scott.emp%ROWTYPE;
BEGIN
   v_row.empno := 9999;
   v_row.ename := 'GLORIA';
   v_row.sal := 100;
   INSERT INTO scott.emp VALUES v_row;
END;
/
