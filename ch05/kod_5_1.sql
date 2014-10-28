set echo on serverout on
declare
  a integer;
  b integer;
  c integer;
begin
  a := 10;
  b := 0;
  c := sqrt(a/b);
  dbms_output.put_line (c);
exception
  when zero_divide then
    dbms_output.put_line('0-a bolme !');
  when others then
    dbms_output.put_line('Diger istisna !');
end;
/
declare
  a integer;
  b integer;
  c integer;
begin
  a := 10;
  b := -2;
  c := sqrt(a/b);
  dbms_output.put_line (c);
exception
  when zero_divide then
    dbms_output.put_line('0-a bolme !');
  when others then
    dbms_output.put_line('Diger istisna !');
end;
/
