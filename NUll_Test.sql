--NULL Test
select EMPLOYEE_ID, salary, COMMISSION_PCT from EMPLOYEES;

select EMPLOYEE_ID, salary, COMMISSION_PCT, salary * COMMISSION_PCT * salary from EMPLOYEES;

select EMPLOYEE_ID, salary, COMMISSION_PCT, salary * nvl(COMMISSION_PCT, 0)*salary from EMPLOYEES;

--select nvl(null, 10) from dual;

--nvl 테스트
select employee_id,nvl(manager_id, 0) manager_id from EMPLOYEES; --manager가 숫자형이므로 0으로 문자형이면 "지정한이름"