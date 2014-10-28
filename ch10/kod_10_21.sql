set echo on
set serverout on
declare
  v_clob clob;
  v_bfile bfile;
  v_destoffset integer;
  v_srcoffset integer;
  v_langctx integer;
  v_warn integer;
begin
  select doc_text into v_clob from my_docs where doc_name = '001' for update;
  v_bfile := bfilename('ROOT','/home/oracle/projects/pl-sql_book/chapter11/test_file.txt');
  v_destoffset := 1;
  v_srcoffset := 1;
  v_langctx := 0;
  dbms_lob.fileopen(v_bfile);
  --dbms_lob.open(v_clob, dbms_lob.lob_readwrite);
  dbms_lob.loadclobfromfile(v_clob, v_bfile,  DBMS_LOB.LOBMAXSIZE, v_destoffset, v_srcoffset, 0, v_langctx, v_warn);
  dbms_output.put_line(v_clob);
  dbms_lob.fileclose(v_bfile);
  commit;
end;
/
