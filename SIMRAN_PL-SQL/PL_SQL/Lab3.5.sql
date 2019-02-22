CREATE OR REPLACE PROCEDURE Issue_Books(Book_ID NUMBER,Stu_Sta_ID NUMBER) IS
Issue_Date DATE;
Expect_Return_date DATE;
BEGIN
Issue_Date:=SYSDATE;
IF TO_CHAR(Issue_Date+10,'dy')='sat' THEN
Expect_Return_Date:=Issue_Date+12;
ELsIF TO_CHAR(Issue_Date+10,'dy')='sun' THEN
Expect_Return_Date:=Issue_Date+11;
ELSE
Expect_Return_Date:=Issue_Date+10;
END IF;
IF LENGTH(TO_CHAR(Stu_Sta_ID))=4 THEN
INSERT INTO Book_Transactions(Book_Code,Student_Code,Book_Issue_Date,Book_Expected_Return_Date) VALUES(Book_ID,Stu_Sta_ID,Issue_Date,Expect_Return_Date);
ELSIF LENGTH(TO_CHAR(Stu_Sta_ID))=6 THEN
INSERT INTO Book_Transactions(Book_Code,Staff_Code,Book_Issue_Date,Book_Expected_Return_Date)
VALUES(Book_ID,Stu_Sta_ID,Issue_Date,Expect_Return_Date);
ELSE
DBMS_OUTPUT.PUT_LINE('INVALID Student or Staff ID');
 END IF;
COMMIT;
END;
 /
