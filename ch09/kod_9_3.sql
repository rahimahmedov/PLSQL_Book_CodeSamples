DECLARE
   TYPE example_type IS RECORD
   (
      fld_full_name   VARCHAR2 (150),
      fld_age             NUMBER
   );
   example_row   example_type;
BEGIN
   example_row.fld_full_name := 'Ramin Samadov';
   example_row.fld_age := '27';
   DBMS_OUTPUT.PUT_LINE ('My Full Name is: ' ||
                          example_row.fld_full_name);
   DBMS_OUTPUT.PUT_LINE ('My Age is: ' || example_row.fld_age);
END;
/
