set serverout on
set echo on
ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';
ALTER SESSION SET NLS_TIMESTAMP_FORMAT='DD-MON-YYYY HH24:MI:SS.FF';
declare
  vdate DATE;
  vtimestamp TIMESTAMP;
  vint_ds INTERVAL DAY(5) TO SECOND(5);
  vint_ym INTERVAL YEAR TO MONTH;
begin
  dbms_output.put_line('----Iki tarix tipi arasinda interval-------');
  vdate := SYSDATE;
  vtimestamp := LOCALTIMESTAMP - 52.12345;
  vint_ds := (vdate - vtimestamp) DAY TO SECOND;
  vint_ym := (vdate - vtimestamp) YEAR TO MONTH;
  dbms_output.put_line('day to second: '||vint_ds);
  dbms_output.put_line('year to month: '||vint_ym);
  dbms_output.put_line('----Interval ve tarix arasinda emeliyyat---');
  vint_ds := interval '1 22:10:00.004004' day to second;
  vdate := SYSDATE + vint_ds;
  vint_ym := interval '10-11' year to month;
  vtimestamp := LOCALTIMESTAMP + vint_ym;
  dbms_output.put_line('date: '||vdate);
  dbms_output.put_line('timestamp: '||vtimestamp);
  dbms_output.put_line('----Interval tipleri arasinda emeliyyat----');
  vint_ds := vint_ds + interval '3 12:00:00' day to second;
  vint_ym := vint_ym + interval '3-2' year to month;
  dbms_output.put_line('day to second: '||vint_ds);
  dbms_output.put_line('year to month: '||vint_ym);
  dbms_output.put_line('----Interval ve eded tipleri arasinda------');
  vint_ds := vint_ds * 2.5;
  vint_ym := vint_ym / 3.2;
  dbms_output.put_line('day to second: '||vint_ds);
  dbms_output.put_line('year to month: '||vint_ym);
end;
/
