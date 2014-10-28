ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';
ALTER SESSION SET NLS_TIMESTAMP_FORMAT='DD-MON-YYYY HH24:MI:SS.FF';
ALTER SESSION SET NLS_TIMESTAMP_TZ_FORMAT='DD-MON-YYYY HH24:MI:SS.FF TZH:TZM';
declare
  v_time_tz TIMESTAMP(3) WITH TIME ZONE;
  v_time_tz_loc TIMESTAMP(3) WITH LOCAL TIME ZONE;
  v_time TIMESTAMP(3);
  v_date DATE;
begin
  v_time_tz := '8-nov-2013 23:23:24.123456 -08:00';
  dbms_output.put_line('Zaman qursagi -08:00: '||v_time_tz);
  v_time_tz_loc := v_time_tz; 
  dbms_output.put_line('Yerli (Baki, +04:00) zaman qursaginda: '||v_time_tz_loc);
  v_time := v_time_tz;
  dbms_output.put_line('TIMESTAMP_TZ tipinden TIMESTAMP tipine cevirilme: '||v_time);
  v_date := v_time_tz;
  dbms_output.put_line('TIMESTAMP tipinden DATE tipine cevirilme: '||v_date);
  v_date := sysdate;
  dbms_output.put_line('Cari tarix: '||v_date);
  v_time_tz := v_date;
  dbms_output.put_line('DATE tipinden TIMESTAMP_ TZ tipine cevirilme: '||v_time_tz);
  v_time_tz_loc := v_date;
  dbms_output.put_line('DATE tipinden TIMESTAMP_TZ_LOCAL tipine cevirilme: '||v_time_tz_loc);
  v_time_tz := v_time_tz_loc;
  dbms_output.put_line('TIMESTAMP_TZ_LOCAL-dan TIMESTAMP_TZ-a cevirilme: '||v_time_tz);
end;
/
