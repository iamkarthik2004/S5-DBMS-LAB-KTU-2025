SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE find_shapes(
   len IN NUMBER,
   bre IN NUMBER,
   side IN NUMBER,
   radius IN NUMBER
) AS
   rect_area NUMBER;
   rect_peri NUMBER;
   sq_area NUMBER;
   sq_peri NUMBER;
   cir_area NUMBER;
   cir_peri NUMBER;
BEGIN
   -- Rectangle
   rect_area := len * bre;
   rect_peri := 2 * (len + bre);

   -- Square
   sq_area := side * side;
   sq_peri := 4 * side;

   -- Circle
   cir_area := 3.14 * radius * radius;
   cir_peri := 2 * 3.14 * radius;

   DBMS_OUTPUT.PUT_LINE('--- Rectangle ---');
   DBMS_OUTPUT.PUT_LINE('Area = ' || rect_area || ', Perimeter = ' || rect_peri);

   DBMS_OUTPUT.PUT_LINE('--- Square ---');
   DBMS_OUTPUT.PUT_LINE('Area = ' || sq_area || ', Perimeter = ' || sq_peri);

   DBMS_OUTPUT.PUT_LINE('--- Circle ---');
   DBMS_OUTPUT.PUT_LINE('Area = ' || cir_area || ', Perimeter = ' || cir_peri);
END;
/

-- Execution:
BEGIN
   find_shapes(&length, &breadth, &side, &radius);
END;
/
