-- date -> ���ڿ�

select employee_id, hire_date from EMPLOYEES;

select employee_id, 
      to_char(hire_date,'YYYY"��"MM"��"dd"��"pmhh12"��"mi"��"ss"��"')
from EMPLOYEES;
      
select employee_id, 
        to_char(hire_date,'YYYY"��"MM"��"dd"��"hh24"��"mi"��"ss"��" day d ddd"��°"')
from EMPLOYEES;

select employee_id, 
        to_char(hire_date,'RR')
from EMPLOYEES;
