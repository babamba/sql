-- NULL함수

select nvl(null, 0)from dual;  --여기가 널이면 0으로 대체

select employee_id, 
        nvl(commission_pct, 0), 
        nvl(COMMISSION_PCT, 0)*salary
        from EMPLOYEES;
        
select nvl2(null, 10, 0) from dual;  --널이아니면 10이찍히고 널이면 0이찍힘

select employee_id, 
        nvl2(commission_pct, commission_pct*salary, salary) as"이번달에 지급할 월급"  -- 널이아니면 커미션퍼센트*월급 이면 월급
from EMPLOYEES;


select nullif(6,3+2) from dual;

select COALESCE(null, null, 3, 4, 5)from dual; --널이 안만날때까지 덮어쓰고 널이 아닌거 출력 

select COALESCE(1, null, 3, 4, 5)from dual;

--select employee_id, nvl(manager_id, '매니저 없음') from EMPLOYEES;
select employee_id, nvl(to_char(manager_id), '매니저 없음') from EMPLOYEES;

