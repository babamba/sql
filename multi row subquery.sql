-- multi row subquery

-- 문제) job_id가  'IT_PROG'인 직원들이 받는 연봉보다 많이 많는 직원을 출력
-- >ALL, < ALL 모두다 크든지 작든지
SELECT salary 
FROM EMPLOYEES where JOB_ID = 'IT_PROG';


-- 문제) job_id가  'IT_PROG'인 직원들이 받는 연봉과 같은 연봉을 받는 직원을 출력
-- 한개라도 같으면  <any , =any , >any
SELECT first_name, salary
FROM EMPLOYEES
where salary in(SELECT salary FROM EMPLOYEES where JOB_ID = 'IT_PROG');            --전보다 크다


SELECT first_name, salary
FROM EMPLOYEES
where salary not in(SELECT salary FROM EMPLOYEES where JOB_ID = 'IT_PROG'); 


SELECT first_name, salary
FROM EMPLOYEES
where salary =any(SELECT salary FROM EMPLOYEES where JOB_ID = 'IT_PROG');


--exists  (잘못된 쿼리임)
SELECT first_name, salary
FROM EMPLOYEES
where EXISTS (SELECT salary FROM EMPLOYEES where JOB_ID = 'IT_PROG');



