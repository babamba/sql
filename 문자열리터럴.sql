--문자열 리터럴

select first_name || '----' || last_name as "나의 문자열" from employees; --내부리터럴은 작은따옴표  as에는 큰따옴표

select SYSDATE from dual;  --날짜 기본포맷팅

select to_char(SYSDATE,'YY/MM/DD')from dual;

select TO_CHAR(SYSDATE, 'YYYY-MM-DD hh:mm:ss') from dual;