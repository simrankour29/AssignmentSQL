create or replace PROCEDURE get_employee
    (p_employee_id   NUMBER DEFAULT NULL)
AS
BEGIN
   FOR aRow IN (SELECT EMPNO, ENAME, HireDate, SAL,DEPTNO
                FROM Emp
                WHERE EmpNO = p_employee_id OR
                      p_employee_id IS NULL OR
                      0 = (SELECT COUNT(*)
                             FROM EMP
                             WHERE EMPNO = p_employee_id)
   LOOP
     DBMS_OUTPUT.PUT_LINE('Employee ID: ' || aRow.EMPNO);
     DBMS_OUTPUT.PUT_LINE('NAME: ' || aRow.ENAME);
     DBMS_OUTPUT.PUT_LINE('HIRE_DATE: ' || aRow.HIRE_DATE);
         DBMS_OUTPUT.PUT_LINE('SALARY: ' || aRow.SAL);
     DBMS_OUTPUT.PUT_LINE('DEPT_NO: ' || aRow.DEPTNO);
   END LOOP;
END get_employee;