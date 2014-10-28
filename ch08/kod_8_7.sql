set serverout on
set echo on
ALTER SESSION SET NLS_TIMESTAMP_FORMAT='DD-MON-YYYY HH24:MI:SS.FF';
ALTER SESSION SET NLS_TIMESTAMP_TZ_FORMAT='DD-MON-YYYY HH24:MI:SS.FF TZH:TZM';
declare
  vtime_tz TIMESTAMP WITH TIME ZONE;
  vtimezone VARCHAR2(20);
  vtime TIMESTAMP := '11-NOV-2013 20:44:00';
begin
  vtime_tz := current_timestamp;
  dbms_output.put_line('CURRENT_TIMESTAMP result => '||vtime_tz);
  vtimezone := dbtimezone;
  dbms_output.put_line('DBTIMEZONE result        => '||vtimezone);
  vtime_tz := from_tz(vtime, '+05:00');
  dbms_output.put_line('FROM_TZ result           => '||vtime_tz);
  vtimezone := sessiontimezone;
  dbms_output.put_line('SESSIONTIMEZONE result   => '||vtimezone);
  vtime_tz := systimestamp;
  dbms_output.put_line('SYSTIMESTAMP result      => '||vtime_tz);
  vtime_tz := sys_extract_utc(vtime_tz);
  dbms_output.put_line('SYS_EXTRACT_UTC result   => '||vtime_tz);
end;
/
