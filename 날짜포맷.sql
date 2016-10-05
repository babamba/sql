-- date -> 문자열

select employee_id, hire_date from EMPLOYEES;

select employee_id, 
      to_char(hire_date,'YYYY"년"MM"월"dd"일"pmhh12"시"mi"분"ss"초"')
from EMPLOYEES;
      
select employee_id, 
        to_char(hire_date,'YYYY"년"MM"월"dd"일"hh24"시"mi"분"ss"초" day d ddd"일째"')
from EMPLOYEES;

select employee_id, 
        to_char(hire_date,'RR')
from EMPLOYEES;
