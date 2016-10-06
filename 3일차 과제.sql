--서브쿼리(SUBQUERY) SQL 문제입니다.
--문제1.
--평균 연봉보다 적은 월급을 받는 직원은 몇 명이나 있습니까?

SELECT EMPLOYEE_ID, salary
FROM EMPLOYEES
where salary < (select avg(salary)From EMPLOYEES);

--문제2. 
--각 부서별로 최고의 급여를 받는 사원의 사번(employee_id), 성(last_name)과 
--연봉(salary)을 조회하세요 단 조회결과는 연봉의 내림차순으로 정렬되어 나타나야 합니다. 

SELECT a.department_id, a.EMPLOYEE_ID, a.LAST_NAME, a.SALARY
FROM EMPLOYEES a,(SELECT department_id, max(salary)as max_salary 
                    FROM employees
                group by DEPARTMENT_ID) b
                
where a.department_id = b.department_id
 and  a.SALARY = b.max_salary
order by salary asc;

--문제3.
--각 업무(job) 별로 연봉(salary)의 총합을 구하고자 합니다. 
--연봉 총합이 가장 높은 업무부터 업무명(job_title)과 연봉 총합을 조회하시오 

SELECT a.JOB_TITLE, b.sum_salary
  FROM JOBS a,(SELECT JOB_ID, sum(SALARY)as sum_salary
               FROM EMPLOYEES
           group by Job_id)b
where a.JOB_ID = b.job_id
order by a.JOB_TITLE asc;

           
--문제4.
--자신의 부서 평균 급여보다 연봉(salary)이 많은 사원의 사번(employee_id), 성(last_name)과 
--연봉(salary)을 조회하세요 

SELECT a.EMPLOYEE_ID, a.LAST_NAME, a.salary, a.DEPARTMENT_ID
FROM EMPLOYEES a,(SELECT DEPARTMENT_ID, avg(salary)as avg_salary
                    FROM EMPLOYEES
                  Group by DEPARTMENT_ID)b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID
and   a.SALARY > b.avg_salary

order by a.DEPARTMENT_ID;
