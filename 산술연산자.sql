--산술 연산자

select 100 + 200 from EMPLOYEES;  --수만 임플로이의 row 갯수만큼 나오고 100+200 결과값만 나옴

select 100 + 200 * 10/5 from dual; 

select employee_id,salary as"본봉", salary + salary * 0.3 as "보너스" from EMPLOYEES;

select -salary from EMPLOYEES; --단항연산 산술연산 모두 된다.


