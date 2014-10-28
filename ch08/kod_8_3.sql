alter session set nls_date_format='dd-mon-RRRR hh24:mi:ss';
declare
  v_date date := sysdate;
begin
  dbms_output.put_line('Cari tarix: '||v_date);
  dbms_output.put_line('Cari tarixin uzerine 2 ay gelinir: '||
	add_months(v_date, 2));
  dbms_output.put_line('Cari tarixin gunu qaytarilir: '||
	extract(day from v_date));
  dbms_output.put_line('Cari ayin son gunu: '||
	last_day(v_date));
  dbms_output.put_line('Iki tarix arasinda ay ferqi: '||
	months_between(to_date('19-mar-2014', 'dd-mon-yyyy'), v_date));
  dbms_output.put_line('Novbeti cume gunun tarixi: '||
	next_day(v_date, 'FRI'));
  dbms_output.put_line('Cari tarixi gune kimi yuvarlasdirilmasi: '||
	round(v_date, 'dd'));
  dbms_output.put_line('Cari tarixin gune kimi kesilmesi: '||
	trunc(v_date, 'dd'));
end;
/
