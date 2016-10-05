select employee_id, job_id from EMPLOYEES;
select DISTINCT job_id from EMPLOYEES;


SELECT employee_id, 
        salary,
        CASE job_id 
          when 'AC_ACCOUNT' then salary + salary*0.1 --����̵� ��ī��Ʈ�̸� �������� 0.1�� ���ؼ� �ְڴ�.
          when 'AC_MGR' then salary + salary*0.2
          when 'AD_VP' then salary + salary*0.5
          else salary 
        end as"�̹��� �޿�"
FROM EMPLOYEES;

--�����ϸ� ������ sql���� ����� �ڹٿ��� ����� ����.

SELECT employee_id, 
        salary,
        DECODE( job_id , 'AC_ACCOUNT', salary + salary*0.1, --����̵� ��ī��Ʈ�̸� �������� 0.1�� ���ؼ� �ְڴ�.
                          'AC_MGR' , salary + salary*0.2,
                          'AD_VP', salary + salary*0.5,
                                           salary ) as"�̹��� �޿�"
FROM EMPLOYEES;