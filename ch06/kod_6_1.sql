DECLARE
  v_benefit   NUMBER (9, 2);  -- Kəsr qalıqlı ədəd,
                              -- 9 rəqəmdən sonra nöqtə
  v_tax       NUMBER;  -- Kəsr qalıqlı rəqəm
  v_age       NUMBER (3); -- tam ədədli rəqəm
BEGIN
   v_benefit := 512.59;
   DBMS_OUTPUT.put_line (v_benefit);
   v_tax := 14.50;
   DBMS_OUTPUT.put_line (v_tax);
   v_age := 69;
   DBMS_OUTPUT.put_line (v_age);
END;
/
