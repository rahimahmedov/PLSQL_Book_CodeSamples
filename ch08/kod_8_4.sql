alter session set nls_date_format='dd-mon-RRRR hh24:mi:ss';
declare
  v_date date := sysdate;
  v_date2 date := to_date('1-jan-2014', 'dd-mon-yyyy');
begin
  dbms_output.put_line('Cari tarix: '||v_date);
  dbms_output.put_line('Cari tarixin uzerine 2 gun gelinir: '||
	(v_date+2) );
  dbms_output.put_line('Cari tarixin uzerine 2 saat gelinir: '||
	(v_date+2/24) );
  dbms_output.put_line('Cari tarixden 20 deqiqe once: '||
	(v_date-20/1440) );
  dbms_output.put_line('Iki tarix arasinda saniye ferqi: '||
	round( (v_date2 - v_date)*86400 ));
end;
/
