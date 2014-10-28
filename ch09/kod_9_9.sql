DECLARE
   TYPE dnames_var IS VARRAY(20) OF VARCHAR2(30);
   dept_names dnames_var;
BEGIN
   IF dept_names IS NULL THEN
      DBMS_OUTPUT.PUT_LINE
        ('Inisalizasiyadan evvel massiv null-dir.');
   ELSE
      DBMS_OUTPUT.PUT_LINE
        ('Inisalizasiyadan evvel massiv null deyildir.');
   END IF;
   dept_names := dnames_var();
   IF dept_names IS NULL THEN
      DBMS_OUTPUT.PUT_LINE
        ('Inisalizasiyadan sonra massiv null-dir.');
   ELSE
      DBMS_OUTPUT.PUT_LINE
        ('Inisalizasiyadan sonra massiv null deyildir.');
      DBMS_OUTPUT.PUT_LINE
        ('Massivin '|| dept_names.COUNT || ' elementi var.');
   END IF;
END;
/
