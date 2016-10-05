--1번전체직원의 다음 정보를 조회하세요. 
--정렬은 입사일(hire_date)의 올림차순(ASC)으로 가장 선임부터 출력이 되도록 하세요. 
--이름(first_name last_name),  이메일(salary),  전화번호(phone_number) 순서이고 
--“이름”, “이메일”, “전화번호”로 컬럼이름을 대체해 보세요.

select first_name|| ' ' || last_name as "이름" 
from employees;

--풀이
--select first_name|| ' ' ||last_name, email, phone_number, HIRE_DATE
--from EMPLOYEES ORDER BY HIRE_DATE asc;


--2번
--업무(JOBS)별로 업무이름(JOB_TITLE)과 
--최고임금(max_salary)를 임금의 내림차순(DESC)로 정렬하세요
--select COUNT(*) from EMPLOYEES;

select job_id, MAX_salary from jobs order by max_salary desc;


--3번 where절
--매니저가 없는 직원은 몇 명입니까?

select employee_id, manager_id from EMPLOYEES where MANAGER_ID is null;


--4번 employees job_id
--select job_id, salary from EMPLOYEES order by salary desc;

select job_id, first_name || ' ' || last_name, salary from EMPLOYEES order by salary desc;

--select *from jobs where JOB_ID = 'AD_PRES';

--5번 department count
--부서는 총 몇 개가 있나요?

select COUNT(DEPARTMENT_ID) from DEPARTMENTS;

--6번 orderby절 맥스함수
--전체 부서를 출력하려고 합니다. 순서는 부서이름이 긴 순서대로 출력해 보세요.
--select last_name, length(last_name) from EMPLOYEES;

select department_name from DEPARTMENTS order by length(department_name) desc; 

--7번
--매니저가 없는 부서가 존재하나요? 몇 개나 존재하나요?
--select departure_id from DEPARTMENTS order by COUNT(MANAGER_ID) asc;

SELECT DEPARTMENT_ID, MANAGER_ID from DEPARTMENTS order by count(MANAGER_ID);

--8번 
--정확하지 않지만, 지사가 있을 것으로 예상되는 나라들을 나라이름을 대문자로 출력하고
--올림차순(ASC)으로 정렬해 보세요.

select country_name, REGION_ID from COUNTRIES order by upper(country_name) asc;


--9번
--전 세계를 몇 개의 지역으로 나누어 관리하고 있나요? 각 지역의 이름 길이의 올림차순으로 정렬하세요.

select region_name from REGIONS order by length(REGION_NAME) asc;


--10번
--부서 사무실이 위치한 도시는 어떤 것들이 있습니까? 중복되지 않도록 도시 이름을 소문자로 올림차순(ASC)로 정렬해 주세요

select DISTINCT city from LOCATIONS order by lower(city) asc;