-- Date

select employee_id, hire_date from EMPLOYEES;

select value
from   NLS_SESSION_PARAMETERS
where parameter= 'NLS_DATE_FORMAT';

select ADD_MONTHS('15/10/05', 2) from dual; -- 암묵적으로 형변환 RR/MM/DD가 되있음
select ADD_MONTHS(SYSDATE, 2) from dual;

select last_day(sysdate) from dual;

select MONTHS_BETWEEN(ADD_MONTHS(SYSDATE, 2),SysDate)
from dual;

select employee_id, 
       job_id,
       round(months_between(end_date, start_date))
from job_history;


-- 1 -> sun, 2 -> mon 3,4,5,6,7 -> sat
select next_day('16/10/05', 2)from dual;






