select employee_id, job_id from EMPLOYEES;
select DISTINCT job_id from EMPLOYEES;


SELECT employee_id, 
        salary,
        CASE job_id 
          when 'AC_ACCOUNT' then salary + salary*0.1 --잡아이디가 어카운트이면 샐러리에 0.1을 곱해서 주겠다.
          when 'AC_MGR' then salary + salary*0.2
          when 'AD_VP' then salary + salary*0.5
          else salary 
        end as"이번달 급여"
FROM EMPLOYEES;

--가능하면 쿼리는 sql에서 만들고 자바에서 만들면 힘듬.

SELECT employee_id, 
        salary,
        DECODE( job_id , 'AC_ACCOUNT', salary + salary*0.1, --잡아이디가 어카운트이면 샐러리에 0.1을 곱해서 주겠다.
                          'AC_MGR' , salary + salary*0.2,
                          'AD_VP', salary + salary*0.5,
                                           salary ) as"이번달 급여"
FROM EMPLOYEES;