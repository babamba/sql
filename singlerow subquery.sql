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


-- ����) ��ü ������ ��� �������� �� ���� ���� ������ �̸��� ����

--SELECT avg(salary)FROM EMPLOYEES;

select first_name, salary 
from employees 
where salary > (SELECT avg(salary)FROM EMPLOYEES);

