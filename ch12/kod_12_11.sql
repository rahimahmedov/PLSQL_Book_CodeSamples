DECLARE
  v_rec employees%rowtype;
  CURSOR c_cur IS
    SELECT * FROM employees WHERE rownum <=2;
  PROCEDURE print_cursor_attributes AS
  BEGIN
    IF c_cur%isopen THEN
      dbms_output.put_line('  ISOPEN: TRUE');
    ELSE
      dbms_output.put_line('  ISOPEN: FALSE');
    END IF;
    IF c_cur%found THEN
      dbms_output.put_line('  FOUND: TRUE');
    ELSE
      dbms_output.put_line('  FOUND: FALSE');
    END IF;
    IF c_cur%notfound THEN
      dbms_output.put_line('  NOTFOUND: TRUE');
    ELSE
      dbms_output.put_line('  NOTFOUND: FALSE');
    END IF;
    dbms_output.put_line('  ROWCOUNT: '||c_cur%rowcount);
  END;
BEGIN
  OPEN c_cur;
  dbms_output.put_line('After OPEN --->');
  print_cursor_attributes;
  LOOP
    FETCH c_cur INTO v_rec;
    dbms_output.put_line('After FETCH --->');
    print_cursor_attributes;
    EXIT WHEN c_cur%notfound;
  END LOOP;
  CLOSE c_cur;
  dbms_output.put_line('After CLOSE --->');
  print_cursor_attributes;
EXCEPTION
  WHEN OTHERS THEN
    dbms_output.put_line('  '||SQLERRM);
END;
/
