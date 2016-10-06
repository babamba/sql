-- single row subquery

select first_name, salary 
from EMPLOYEES 
where salary > (select salary from EMPLOYEES where first_name = 'Lex');

select first_name, salary 
from EMPLOYEES 
where salary = (select salary from EMPLOYEES where first_name = 'Lex');

select first_name, salary 
from EMPLOYEES 
where salary < (select salary from EMPLOYEES where first_name = 'Lex');

select first_name, salary 
from EMPLOYEES 
where salary <> (select salary from EMPLOYEES where first_name = 'Lex');


-- 문제) 전체 직원의 평균 연봉보다 더 많이 많은 직원의 이름과 연봉

--SELECT avg(salary)FROM EMPLOYEES;

select first_name, salary 
from employees 
where salary > (SELECT avg(salary)FROM EMPLOYEES);

