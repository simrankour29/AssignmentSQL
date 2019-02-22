<<outer_block>>
DECLARE 
var_num1 NUMBER := 5;
BEGIN
<<inner_block>>
DECLARE 
var_num1 NUMBER := 10;
BEGIN
DBMS_OUTPUT.PUT_LINE('Value for outer block:' ||outer_block.var_num1);
END;
END;
