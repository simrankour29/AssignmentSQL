CREATE OR REPLACE PROCEDURE Find_Manager(Staff_ID in NUMBER) IS
CURSOR C_Name IS
SELECT s1.Staff_Code,s1.Staff_Name,s1.Dept_Code,s2.Staff_Name"Manager_Name"
FROM Staff_Master s1,Staff_Master s2 WHERE s2.Staff_Code=s1.MGR_Code and s1.Staff_Code=Staff_ID;
Code staff_Master.Staff_Code%TYPE;
Name Staff_Master.Staff_Name%TYPE;
Dept Staff_Master.Dept_Code%TYPE;
Manager Staff_Master.Staff_Name%TYPE;
BEGIN
OPEN C_Name;
DBMS_OUTPUT.PUT_LINE('Staff Code '||' Staff Name '||' Dept Code '||' Manager Name');
LOOP
FETCH C_Name INTO Code,Name,Dept,Manager;
EXIT WHEN C_Name%NOTFOUND;
IF C_Name%FOUND THEN
DBMS_OUTPUT.PUT_LINE(Code||'        '||Name||'       '||Code||'       '||Manager);
END IF;
END LOOP;
COMMIT;
CLOSE C_Name;
END;
/
BEGIN
Find_Manager(100008);
END;
/
