declare
  v_clob1 CLOB := 'LOB data';
  v_clob2 CLOB;
  v_clob3 CLOB;
  v_buff VARCHAR2(200) := 'Test text';
begin
  DBMS_LOB.OPEN(v_clob1, DBMS_LOB.LOB_READWRITE);
  DBMS_LOB.WRITEAPPEND(v_clob1, length(v_buff), v_buff);
  IF DBMS_LOB.ISTEMPORARY(v_clob1) = 1 THEN
    DBMS_OUTPUT.PUT_LINE('v_clob1 is temporary');
  ELSE
    DBMS_OUTPUT.PUT_LINE('v_clob1 is persistent');
  END IF;
  DBMS_LOB.CLOSE(v_clob1);
  
  SELECT UPPER(doc_text), doc_text 
    INTO v_clob2, v_clob3 
    FROM my_docs 
   WHERE doc_name = 'test';
   
  IF DBMS_LOB.ISTEMPORARY(v_clob2) = 1 THEN
    DBMS_OUTPUT.PUT_LINE('v_clob2 is temporary');
  ELSE
    DBMS_OUTPUT.PUT_LINE('v_clob2 is persistent');
  END IF;

  IF DBMS_LOB.ISTEMPORARY(v_clob3) = 1 THEN
    DBMS_OUTPUT.PUT_LINE('v_clob3 is temporary');
  ELSE
    DBMS_OUTPUT.PUT_LINE('v_clob3 is persistent');
  END IF;
END;
/
