-- inner join(equi-join)
SELECT a.employee_id,
        a.department_id, 
        a.FIRST_NAME, 
        b.DEPARTMENT_NAME
FROM EMPLOYEES a, DEPARTMENTS b
WHERE a.DEPARTMENTS_ID = b.DEPARTMENT_ID --JOIN 조건
  and a.salary > 5000  ;               -- row 선택조건
  
--outer join
SELECT  count(*) 
  FROM  EMPLOYEES a,
        departments b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID;


SELECT  count(*) 
  FROM  EMPLOYEES a,
        departments b
where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;


SELECT  nvl(a.first_name, '소속 사원이 없음'), b.DEPARTMENT_name
  FROM  EMPLOYEES a,
        departments b
where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;



--self join

SELECT emp.FIRST_NAME, nvl(man.FIRST_NAME, 'none manager')
FROM EMPLOYEES emp, EMPLOYEES man
where  man.EMPLOYEE_ID (+)= emp.MANAGER_ID;

SELECT * FROM EMPLOYEES where MANAGER_ID is null;






