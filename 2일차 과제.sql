--���� 1. 
--�� ���(employee)�� ���ؼ� ���(employee_id), �̸�(first_name), �μ���(department_name),
--�Ŵ���(manager)�� �̸�(first_name)�� ��ȸ�ϼ���.

SELECT a.EMPLOYEE_ID, a.FIRST_NAME, b.DEPARTMENT_NAME, c.FIRST_NAME
FROM  EMPLOYEES a, departments  b, EMPLOYEES c
where a.EMPLOYEE_ID = b.DEPARTMENT_ID 
and a.manager_id = c.employee_id;

--����2.
--����(regions)�� ���� ������� �����̸�(region_name), �����̸�(country_name)���� 
--����ϵ� �����̸�, �����̸� ������� ������������ �����ϼ���.

SELECT a.REGION_NAME, b.country_name
FROM REGIONS a, COUNTRIES b
where a.region_id = b.region.id
order by a.REGION_ID asc, b.country_name asc;

--����3.
--�� �μ�(department)�� ���ؼ� �μ���ȣ(department_id), �̸�(department_name),
--�Ŵ���(manager)�� �̸�(first_name), ��ġ(locations)�� ����(city), 
--����(countries)�� �̸�(countries_name) �׸��� ��������(regions)�� �̸�(resion_name)���� ���� ����� ������.

SELECT a.DEPARTMENT_ID, a.DEPARTMENT_NAME, b.first_name, e.CITY, d.COUNTRY_NAME, c.REGION_NAME
FROM  employees a, DEPARTMENTS b, regions c, countries d, locations e
where a.EMPLOYEE_ID = b.DEPARTMENT_ID  
  and a.EMPLOYEE_ID = a.MANAGER_ID;
  
  
  
--����4.
--��Public Accountant���� ��å(job_title)���� ���ſ� �ٹ��� ���� �ִ� ��� ����� 
--����� �̸��� ����ϼ���. 
--(���� ��Public Accountant���� ��å(job_title)���� �ٹ��ϴ� ����� ������� �ʽ��ϴ�.)
--�̸��� first_name�� last_name�� ���� ����մϴ�.



--����5.
--���� ��(last_name)�� ���� �������� ���(employee_id), �̸�(firt_name), ��(last_name)�� 
--�μ� �̸��� ��ȸ�Ͽ� ��(last_name)������ �����ϼ���



--����6.
--�ڽ��� �Ŵ������� ä����(hire_date)�� ���� ����� ���(employee_id), ��(last_name)��
--ä����(hire_date)�� ��ȸ�ϼ��� 




