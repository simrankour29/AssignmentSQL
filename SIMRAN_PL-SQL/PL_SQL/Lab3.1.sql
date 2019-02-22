Create or replace function cal_age( Dt in date)
Return number is
Age number;
Begin
Age:=Months_between(sysdate,Dt)/12;
Return Age;
End;


Declare

Age_in_years number;
begin
Age_in_years:=cal_age('11-11-1996');
 dbms_output.put_line(Age_in_years);
 End;
/
