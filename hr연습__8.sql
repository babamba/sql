--����

select EMPLOYEE_ID, avg(salary) from EMPLOYEES;  --�����Լ��� �������ǿ� �����Լ��� �����ؼ� �׿��ǰ� ������ ���� �����Լ��� ����

select AVG(salary) From EMPLOYEES order by AVG(salary) desc;

  select department_id, avg(salary) as avg_salary
  from EMPLOYEES
-- where ����
  group by department_id
  order by avg_salary desc;
  
  
  select department_id, avg(salary), max(salary), MIN(salary)
  from EMPLOYEES
  group by department_id;
  
  
  select department_id, avg(salary)
  from EMPLOYEES
  group by department_id
  having avg(salary) > 5000;
  
  
  
  