desc employees; --컬럼이름

select employee_id, last_name  --순서를 맞춰주는 order by 알아두기
 from employees;
 
select last_name
  from EMPLOYEES;
  
  select last_name as "성"
    FROM employees;
    
select last_name ||''|| first_name as "이름"
from employees;