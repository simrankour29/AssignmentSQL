DECLARE 
cursor c_staff is select staff_code,staff_name,staff_sal from staff_master where dept_code=&dept_code;
code number(8);
name varchar2(50);
sal number(10,2);
begin
open c_staff;
if c_staff%isopen then
loop
fetch c_staff into code,name,sal;
exit when c_staff%notfound;
if(sal*.30)<5000 then
update staff_master set staff_sal = sal+(sal*.30);
else
update staff_master set staff_sal = sal+5000;
end if;
end loop;
end if;
end;