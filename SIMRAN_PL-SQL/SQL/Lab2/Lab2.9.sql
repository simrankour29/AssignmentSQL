SELECT STUDENT_CODE,STUDENT_NAME,DECODE(DEPT_CODE,20,'ELECTRICALS',30,'ELECTRONICS','OTHERS') DEPARTMENT_NAME FROM STUDENTMASTER;