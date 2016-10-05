--where절 테스트
select EMPLOYEE_ID , SALARY 
 from EMPLOYEES
 where SALARY > 10000;
 
 select EMPLOYEE_ID , SALARY 
   from EMPLOYEES
  where 5000 < SALARY
    AND SALARY < 10000;
    
select EMPLOYEE_ID , SALARY 
  from EMPLOYEES
  where SALARY 
between 5000 
    AND 10000;
    
   select employee_id, manager_id
   from EMPLOYEES
   where MANAGER_ID is not null;
   
   
  --LIKE 검색
  
    select FIRST_NAME 
  from employees
  where first_name like 'E%'; --E로 시작하는 모든
  
  select FIRST_NAME 
  from employees
  where first_name like '%ra';
  
    select FIRST_NAME 
  from employees
  where first_name like '%ra%'; -- 가운데 ra가있는 모든
  
    select FIRST_NAME 
  from employees
  where first_name like 'E____';  -- _가 문자하나 E로 시작하고 총 다섯개문자인 이름
  
    
    
    