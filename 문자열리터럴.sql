--���ڿ� ���ͷ�

select first_name || '----' || last_name as "���� ���ڿ�" from employees; --���θ��ͷ��� ��������ǥ  as���� ū����ǥ

select SYSDATE from dual;  --��¥ �⺻������

select to_char(SYSDATE,'YY/MM/DD')from dual;

select TO_CHAR(SYSDATE, 'YYYY-MM-DD hh:mm:ss') from dual;