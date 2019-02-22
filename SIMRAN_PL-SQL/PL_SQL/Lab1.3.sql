DECLARE 
    z_employee emp%ROWTYPE; 
BEGIN 
    SELECT * INTO   z_employee 
    FROM   emp 
    WHERE  empno = 7369; 

    dbms_output.Put_line('Employee Details :   ID:' 
                         ||z_employee.empno 
                         ||'  Name: ' 
                         ||z_employee.ename 
                         ||'  Salary:  ' 
                         ||z_employee.sal); 
END; 