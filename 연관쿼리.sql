--��) �� �μ����� �ְ����� �޴� ������ �̸��� ������ ���

--select department_id, max(salary)
--from EMPLOYEES
--group by DEPARTMENT_ID;

--���������� ��Ƽ�÷�where(,) ��Ƽ�ο�IN 

SELECT EMPLOYEE_ID, salary
FROM EMPLOYEES
where (department_id, salary) in (select department_id, max(salary)
                 from EMPLOYEES
                 group by DEPARTMENT_ID);
                 
                 
           
           --�� ��� ��õ      
SELECT a.FIRST_NAME, a.SALARY 
FROM EMPLOYEES a,(select department_id, 
                     max(salary) as max_salary
                    from EMPLOYEES
                group by DEPARTMENT_ID) b
                 
where a.DEPARTMENT_ID = b.department_id
  and a.SALARY = b.max_salary;
  
  
  
  