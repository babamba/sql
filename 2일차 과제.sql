--문제 1. 
--각 사원(employee)에 대해서 사번(employee_id), 이름(first_name), 부서명(department_name),
--매니저(manager)의 이름(first_name)을 조회하세요.

SELECT a.EMPLOYEE_ID, a.FIRST_NAME, b.DEPARTMENT_NAME, c.FIRST_NAME
FROM  EMPLOYEES a, departments  b, EMPLOYEES c
where a.EMPLOYEE_ID = b.DEPARTMENT_ID 
and a.manager_id = c.employee_id;

--문제2.
--지역(regions)에 속한 나라들을 지역이름(region_name), 나라이름(country_name)으로 
--출력하되 지역이름, 나라이름 순서대로 내림차순으로 정렬하세요.

SELECT a.REGION_NAME, b.country_name
FROM REGIONS a, COUNTRIES b
where a.region_id = b.region.id
order by a.REGION_ID asc, b.country_name asc;

--문제3.
--각 부서(department)에 대해서 부서번호(department_id), 이름(department_name),
--매니저(manager)의 이름(first_name), 위치(locations)한 도시(city), 
--나라(countries)의 이름(countries_name) 그리고 지역구분(regions)의 이름(resion_name)까지 전부 출력해 보세요.

SELECT a.DEPARTMENT_ID, a.DEPARTMENT_NAME, b.first_name, e.CITY, d.COUNTRY_NAME, c.REGION_NAME
FROM  employees a, DEPARTMENTS b, regions c, countries d, locations e
where a.EMPLOYEE_ID = b.DEPARTMENT_ID  
  and a.EMPLOYEE_ID = a.MANAGER_ID;
  
  
  
--문제4.
--‘Public Accountant’의 직책(job_title)으로 과거에 근무한 적이 있는 모든 사원의 
--사번과 이름을 출력하세요. 
--(현재 ‘Public Accountant’의 직책(job_title)으로 근무하는 사원은 고려하지 않습니다.)
--이름은 first_name과 last_name을 합쳐 출력합니다.



--문제5.
--같은 성(last_name)을 가진 직원들의 사번(employee_id), 이름(firt_name), 성(last_name)과 
--부서 이름을 조회하여 성(last_name)순서로 정렬하세요



--문제6.
--자신의 매니저보다 채용일(hire_date)이 빠른 사원의 사번(employee_id), 성(last_name)과
--채용일(hire_date)을 조회하세요 




