--NULL Test
select EMPLOYEE_ID, salary, COMMISSION_PCT from EMPLOYEES;

select EMPLOYEE_ID, salary, COMMISSION_PCT, salary * COMMISSION_PCT * salary from EMPLOYEES;

select EMPLOYEE_ID, salary, COMMISSION_PCT, salary * nvl(COMMISSION_PCT, 0)*salary from EMPLOYEES;

--select nvl(null, 10) from dual;

--nvl �׽�Ʈ
select employee_id,nvl(manager_id, 0) manager_id from EMPLOYEES; --manager�� �������̹Ƿ� 0���� �������̸� "�������̸�"