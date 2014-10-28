CREATE OR REPLACE PROCEDURE P_SALGRADE (p_grade IN NUMBER,
                  p_min_sal   IN NUMBER,
                  p_max_sal   IN NUMBER) --Header
IS
   v_result   VARCHAR2 (100);  -- Declaration Section
BEGIN    -- Execution Section
   INSERT INTO scott.salgrade (grade, losal, hisal)
        VALUES (6, 10000, 19999);
   v_result := ' Sucessfully Insert';
   DBMS_OUTPUT.PUT_LINE (v_result);
   COMMIT;
EXCEPTION    -- Exception Section
   WHEN OTHERS
   THEN
      raise_application_error (-20002,'An error has occurred while inserting');
END;
/
