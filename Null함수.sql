-- NULL�Լ�

select nvl(null, 0)from dual;  --���Ⱑ ���̸� 0���� ��ü

select employee_id, 
        nvl(commission_pct, 0), 
        nvl(COMMISSION_PCT, 0)*salary
        from EMPLOYEES;
        
select nvl2(null, 10, 0) from dual;  --���̾ƴϸ� 10�������� ���̸� 0������

select employee_id, 
        nvl2(commission_pct, commission_pct*salary, salary) as"�̹��޿� ������ ����"  -- ���̾ƴϸ� Ŀ�̼��ۼ�Ʈ*���� �̸� ����
from EMPLOYEES;


select nullif(6,3+2) from dual;

select COALESCE(null, null, 3, 4, 5)from dual; --���� �ȸ��������� ����� ���� �ƴѰ� ��� 

select COALESCE(1, null, 3, 4, 5)from dual;

--select employee_id, nvl(manager_id, '�Ŵ��� ����') from EMPLOYEES;
select employee_id, nvl(to_char(manager_id), '�Ŵ��� ����') from EMPLOYEES;

