BEGIN
   INSERT INTO scott.bonus (ename,
			    job,
			    sal,
			    comm);
   SELECT ename,
       job,
       sal,
       comm
    FROM scott.emp
    WHERE job = 'MANAGER';
end;
/
