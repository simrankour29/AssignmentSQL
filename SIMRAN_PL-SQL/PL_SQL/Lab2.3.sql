Declare
Res_comm emp.comm%type;
Begin
select comm into res_comm from emp where empno=7369;
dbms_output.put_line('res_comm');
Exception
When no_data_found then
dbms_output.put_line( 'no record found');
End;
