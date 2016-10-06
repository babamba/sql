
SELECT a.employee_id,
        a.department_id, 
        a.FIRST_NAME, 
        b.DEPARTMENT_NAME
FROM EMPLOYEES a, DEPARTMENTS b
WHERE a.DEPARTMENTS_ID = b.DEPARTMENT_ID --JOIN 조건
  and a.salary > 5000  ;               -- row 선택조건