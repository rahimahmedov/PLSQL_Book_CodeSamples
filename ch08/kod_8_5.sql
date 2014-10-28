ALTER SESSION SET NLS_TIMESTAMP_FORMAT='DD-MON-YYYY HH24:MI:SS.FF';
declare
   vtime1 timestamp;
   vtime2 timestamp(2);
   vtime3 timestamp(2);
begin
   vtime1 := '6-nov-2013 01:00:23.234';
   dbms_output.put_line(vtime1);
   
   vtime2 := vtime1;
   dbms_output.put_line(vtime2);

   vtime3 := to_timestamp('2013-11-06 23:55:59.12345', 'YYYY-MM-DD HH24:MI:SS.FF');
   dbms_output.put_line(to_char(vtime3, 'YYYY/MM/DD HH:MI:SS.FF AM'));
   
end;
/ 
