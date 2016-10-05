--1����ü������ ���� ������ ��ȸ�ϼ���. 
--������ �Ի���(hire_date)�� �ø�����(ASC)���� ���� ���Ӻ��� ����� �ǵ��� �ϼ���. 
--�̸�(first_name last_name),  �̸���(salary),  ��ȭ��ȣ(phone_number) �����̰� 
--���̸���, ���̸��ϡ�, ����ȭ��ȣ���� �÷��̸��� ��ü�� ������.

select first_name|| ' ' || last_name as "�̸�" 
from employees;

--Ǯ��
--select first_name|| ' ' ||last_name, email, phone_number, HIRE_DATE
--from EMPLOYEES ORDER BY HIRE_DATE asc;


--2��
--����(JOBS)���� �����̸�(JOB_TITLE)�� 
--�ְ��ӱ�(max_salary)�� �ӱ��� ��������(DESC)�� �����ϼ���
--select COUNT(*) from EMPLOYEES;

select job_id, MAX_salary from jobs order by max_salary desc;


--3�� where��
--�Ŵ����� ���� ������ �� ���Դϱ�?

select employee_id, manager_id from EMPLOYEES where MANAGER_ID is null;


--4�� employees job_id
--select job_id, salary from EMPLOYEES order by salary desc;

select job_id, first_name || ' ' || last_name, salary from EMPLOYEES order by salary desc;

--select *from jobs where JOB_ID = 'AD_PRES';

--5�� department count
--�μ��� �� �� ���� �ֳ���?

select COUNT(DEPARTMENT_ID) from DEPARTMENTS;

--6�� orderby�� �ƽ��Լ�
--��ü �μ��� ����Ϸ��� �մϴ�. ������ �μ��̸��� �� ������� ����� ������.
--select last_name, length(last_name) from EMPLOYEES;

select department_name from DEPARTMENTS order by length(department_name) desc; 

--7��
--�Ŵ����� ���� �μ��� �����ϳ���? �� ���� �����ϳ���?
--select departure_id from DEPARTMENTS order by COUNT(MANAGER_ID) asc;

SELECT DEPARTMENT_ID, MANAGER_ID from DEPARTMENTS order by count(MANAGER_ID);

--8�� 
--��Ȯ���� ������, ���簡 ���� ������ ����Ǵ� ������� �����̸��� �빮�ڷ� ����ϰ�
--�ø�����(ASC)���� ������ ������.

select country_name, REGION_ID from COUNTRIES order by upper(country_name) asc;


--9��
--�� ���踦 �� ���� �������� ������ �����ϰ� �ֳ���? �� ������ �̸� ������ �ø��������� �����ϼ���.

select region_name from REGIONS order by length(REGION_NAME) asc;


--10��
--�μ� �繫���� ��ġ�� ���ô� � �͵��� �ֽ��ϱ�? �ߺ����� �ʵ��� ���� �̸��� �ҹ��ڷ� �ø�����(ASC)�� ������ �ּ���

select DISTINCT city from LOCATIONS order by lower(city) asc;