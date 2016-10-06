--집계

select EMPLOYEE_ID, avg(salary) from EMPLOYEES;  --집계함수는 프로젝션에 집계함수만 떠야해서 그외의것 넣으면 에러 집계함수만 넣자

select AVG(salary) From EMPLOYEES order by AVG(salary) desc;

  select department_id, avg(salary) as avg_salary
  from EMPLOYEES
-- where 생략
  group by department_id
  order by avg_salary desc;
  
  
  select department_id, avg(salary), max(salary), MIN(salary)
  from EMPLOYEES
  group by department_id;
  
  
  select department_id, avg(salary)
  from EMPLOYEES
  group by department_id
  having avg(salary) > 5000;
  
  
  
  