--��������(SUBQUERY) SQL �����Դϴ�.
--����1.
--��� �������� ���� ������ �޴� ������ �� ���̳� �ֽ��ϱ�?

SELECT EMPLOYEE_ID, salary
FROM EMPLOYEES
where salary < (select avg(salary)From EMPLOYEES);

--����2. 
--�� �μ����� �ְ��� �޿��� �޴� ����� ���(employee_id), ��(last_name)�� 
--����(salary)�� ��ȸ�ϼ��� �� ��ȸ����� ������ ������������ ���ĵǾ� ��Ÿ���� �մϴ�. 

SELECT a.department_id, a.EMPLOYEE_ID, a.LAST_NAME, a.SALARY
FROM EMPLOYEES a,(SELECT department_id, max(salary)as max_salary 
                    FROM employees
                group by DEPARTMENT_ID) b
                
where a.department_id = b.department_id
 and  a.SALARY = b.max_salary
order by salary asc;

--����3.
--�� ����(job) ���� ����(salary)�� ������ ���ϰ��� �մϴ�. 
--���� ������ ���� ���� �������� ������(job_title)�� ���� ������ ��ȸ�Ͻÿ� 

SELECT a.JOB_TITLE, b.sum_salary
  FROM JOBS a,(SELECT JOB_ID, sum(SALARY)as sum_salary
               FROM EMPLOYEES
           group by Job_id)b
where a.JOB_ID = b.job_id
order by a.JOB_TITLE asc;

           
--����4.
--�ڽ��� �μ� ��� �޿����� ����(salary)�� ���� ����� ���(employee_id), ��(last_name)�� 
--����(salary)�� ��ȸ�ϼ��� 

SELECT a.EMPLOYEE_ID, a.LAST_NAME, a.salary, a.DEPARTMENT_ID
FROM EMPLOYEES a,(SELECT DEPARTMENT_ID, avg(salary)as avg_salary
                    FROM EMPLOYEES
                  Group by DEPARTMENT_ID)b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID
and   a.SALARY > b.avg_salary

order by a.DEPARTMENT_ID;
