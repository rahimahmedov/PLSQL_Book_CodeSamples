alter session set nls_date_format='dd-mon-RRRR hh24:mi:ss';
declare
  v_date date;
begin
  v_date := '1-nov-2013 18:57';
  dbms_output.put_line(v_date);
  v_date := to_date('20131101185354','yyyymmddhh24miss');
  dbms_output.put_line(v_date);
  dbms_output.put_line(to_char(v_date,'RRRR-mm-dd hh:mi:ss AM'));
end;
/
