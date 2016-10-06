--문) 각 부서별로 최고연봉을 받는 직원의 이름과 연봉을 출력

--select department_id, max(salary)
--from EMPLOYEES
--group by DEPARTMENT_ID;

--서브쿼리가 멀티컬럼where(,) 멀티로우IN 

SELECT EMPLOYEE_ID, salary
FROM EMPLOYEES
where (department_id, salary) in (select department_id, max(salary)
                 from EMPLOYEES
                 group by DEPARTMENT_ID);
                 
                 
           
           --이 방법 추천      
SELECT a.FIRST_NAME, a.SALARY 
FROM EMPLOYEES a,(select department_id, 
                     max(salary) as max_salary
                    from EMPLOYEES
                group by DEPARTMENT_ID) b
                 
where a.DEPARTMENT_ID = b.department_id
  and a.SALARY = b.max_salary;
  
  
  
  