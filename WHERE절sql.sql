--where�� �׽�Ʈ
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
   
   
  --LIKE �˻�
  
    select FIRST_NAME 
  from employees
  where first_name like 'E%'; --E�� �����ϴ� ���
  
  select FIRST_NAME 
  from employees
  where first_name like '%ra';
  
    select FIRST_NAME 
  from employees
  where first_name like '%ra%'; -- ��� ra���ִ� ���
  
    select FIRST_NAME 
  from employees
  where first_name like 'E____';  -- _�� �����ϳ� E�� �����ϰ� �� �ټ��������� �̸�
  
    
    
    