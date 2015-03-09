BEGIN
 FOR i IN (SELECT * FROM employees WHERE ROWNUM < 5) 3 LOOP
 dbms_output.put_line('Name: '||i.first_name);
 END LOOP;
END;
/
