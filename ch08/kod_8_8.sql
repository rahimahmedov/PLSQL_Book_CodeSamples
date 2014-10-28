set serveroutput on
set echo on
declare
   vint_ym INTERVAL YEAR(3) TO MONTH;
   vint_ds INTERVAL DAY(3) TO SECOND(5);
begin
   dbms_output.put_line('INTERVAL YEAR TO MONTH');
   vint_ym := INTERVAL '2-10' YEAR TO MONTH;
   dbms_output.put_line('2 il 10 ay araligi: '||vint_ym);
   vint_ym := INTERVAL '2' YEAR;
   dbms_output.put_line('2 il araligi:       '||vint_ym);
   vint_ym := INTERVAL '10' MONTH;
   dbms_output.put_line('10 ay araligi:      '||vint_ym);
   dbms_output.put_line('INTERVAL DAY TO SECOND');
   vint_ds := INTERVAL '3 20:10:20.534' DAY TO SECOND;
   dbms_output.put_line('3 gun 20 saat 10 deqiqe 20.534 saniye araligi: '||vint_ds);
   vint_ds := INTERVAL '3' DAY;
   dbms_output.put_line('3 gun araligi:                                 '||vint_ds);
   vint_ds := INTERVAL '20' HOUR; 	
   dbms_output.put_line('20 saat araligi:                               '||vint_ds);
   vint_ds := INTERVAL '10' MINUTE;
   dbms_output.put_line('10 deqiqe araligi:                             '||vint_ds);
   vint_ds := INTERVAL '20.534' SECOND;
   dbms_output.put_line('20.534 saniye araligi:                         '||vint_ds);
end;
/
