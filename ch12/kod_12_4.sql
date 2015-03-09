declare
  cursor c_cur is 
    select * from my_employees;
begin
  open c_cur;
  close c_cur;
end;
/
