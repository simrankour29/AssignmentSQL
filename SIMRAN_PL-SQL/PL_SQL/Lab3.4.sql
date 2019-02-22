CREATE OR REPLACE PROCEDURE update_salary(scode IN NUMBER) IS
	staff STAFF_MASTER%ROWTYPE;
	num1 NUMBER;
	months NUMBER := 1;
	year1 NUMBER;
BEGIN
	SELECT *
	INTO staff
	FROM STAFF_MASTER
	WHERE staff_code = scode;
	months := ROUND(MONTHS_BETWEEN(SYSDATE(),staff.hiredate));
	year1 := ROUND(months/12,0);
	num1 := 1;
	IF year1 > 2 AND year1 < 5 THEN
		num1 := num1 * 1.2;
	ELSIF year1 > 5 THEN
		num1 := num1 * 1.25;
	END IF;
	
	IF (num1 != 1) THEN
		INSERT INTO staff_master_back
		SELECT *
		FROM STAFF_MASTER
		WHERE staff_code = scode;
		
		UPDATE STAFF_MASTER
		SET staff_sal = staff_sal * num1
		WHERE staff_code = scode;
		dbms_output.put_line('Salary updated sdvcessfully');
	END IF;
END;
