DECLARE
  TYPE t_nested_typ IS TABLE OF NUMBER;
  v_nt1 t_nested_typ := t_nested_typ(1,2,3);
  v_nt2 t_nested_typ := t_nested_typ(3,2,1);
  v_nt3 t_nested_typ := t_nested_typ(2,3,1,3);
  v_nt4 t_nested_typ := t_nested_typ(1,2,4);
  v_answer BOOLEAN;
  v_howmany NUMBER;
  PROCEDURE testify (p_truth BOOLEAN := NULL, p_quantity NUMBER := NULL) IS
  BEGIN
    IF p_truth IS NOT NULL THEN
      DBMS_OUTPUT.PUT_LINE
        (CASE p_truth WHEN TRUE THEN 'True'
                      WHEN FALSE THEN 'False' END);
    END IF;
    IF p_quantity IS NOT NULL THEN
	DBMS_OUTPUT.PUT_LINE(p_quantity);
    END IF;
  END; 
BEGIN
  v_answer := v_nt1 IN (v_nt2,v_nt3,v_nt4); 
  testify(p_truth => v_answer);
  v_answer := v_nt1 SUBMULTISET OF v_nt3; 
  testify(p_truth => v_answer);
  v_answer := v_nt1 NOT SUBMULTISET OF v_nt4;
  testify(p_truth => v_answer);
  v_howmany := CARDINALITY(v_nt3); 
  testify(p_quantity => v_howmany); 
  v_howmany := CARDINALITY(SET(v_nt3)); 
  testify(p_quantity => v_howmany); 
  v_answer := 4 MEMBER OF v_nt1; 
  testify(p_truth => v_answer); 
  v_answer := v_nt3 IS A SET; 
  testify(p_truth => v_answer); 
  v_answer :=v_nt3 IS NOT A SET; 
  testify(p_truth => v_answer); 
  v_answer := v_nt1 IS EMPTY; 
  testify(p_truth => v_answer);
END;
/
