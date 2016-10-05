-- 문자열 함수

select lower('DataBase management System')from dual;
select lower(FIRST_name) from EMPLOYEES;

select upper('Database management System')from dual;
select last_name, upper(last_name) from EMPLOYEES;

select initcap('Database management System') from dual;

select concat(first_name, last_name) from EMPLOYEES;
select first_name || ' ' || last_name from EMPLOYEES;

select substr('Database management System', 2, 4) from dual; -- 디비는 자바와 달리 1부터 인덱스 시작

select instr(lower ('Database management System'), 'Sys') from dual;

select employee_id, LPAD(salary, 10 , '*') from EMPLOYEES;
select employee_id, RPAD(salary, 10 , '*') from EMPLOYEES;
select trim('#' from '####Data###base####') from dual;  --공백제거
select '---' || ltrim( '     ####Data###base####      ','')|| '---' from dual;  --공백제거

select replace('Database Management System', 'a', 'A.')from dual;


