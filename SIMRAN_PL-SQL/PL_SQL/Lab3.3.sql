CREATE OR REPLACE FUNCTION CTC(Staff_ID in NUMBER)
RETURN number is
sal staff_master.staff_sal%type;
DOJ staff_master.hiredate%type;
ctc number(10);
DA number(10);
HRA number(10);
 TA number(10);
Spl_Allow number(10);
 exp number(10);
BEGIN
select staff_sal,hiredate INTO sal,DOJ FROM staff_master WHERE staff_code=Staff_ID;
DA:=sal*15/100;
HRA:=sal*20/100;
TA:=sal*8/100;
exp:=round((sysdate-DOJ)/365);
IF exp>=1 and exp<2 then
Spl_Allow:=sal*10/100;
 ELSIF exp>=2 and exp<3 then
Spl_Allow:=sal*20/100;
ELSIF exp>4 then
Spl_Allow:=sal*30/100;
ELSE
Spl_Allow:=0;
END IF;
ctc:=DA+HRA+TA+Spl_Allow+sal;
RETURN ctc;
END;
 /
BEGIN
DBMS_OUTPUT.PUT_LINE('Cost to company is:'||'   '||CTC(&code));
END;
/
