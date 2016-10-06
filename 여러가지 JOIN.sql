-- inner join(equi-join)
SELECT a.employee_id,
        a.department_id, 
        a.FIRST_NAME, 
        b.DEPARTMENT_NAME
FROM EMPLOYEES a, DEPARTMENTS b
WHERE a.DEPARTMENTS_ID = b.DEPARTMENT_ID --JOIN ����
  and a.salary > 5000  ;               -- row ��������
  
--outer join
SELECT  count(*) 
  FROM  EMPLOYEES a,
        departments b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID;


SELECT  count(*) 
  FROM  EMPLOYEES a,
        departments b
where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;


SELECT  nvl(a.first_name, '�Ҽ� ����� ����'), b.DEPARTMENT_name
  FROM  EMPLOYEES a,
        departments b
where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;



--self join

SELECT emp.FIRST_NAME, nvl(man.FIRST_NAME, 'none manager')
FROM EMPLOYEES emp, EMPLOYEES man
where  man.EMPLOYEE_ID (+)= emp.MANAGER_ID;

SELECT * FROM EMPLOYEES where MANAGER_ID is null;






