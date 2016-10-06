-- multi row subquery

-- ����) job_id��  'IT_PROG'�� �������� �޴� �������� ���� ���� ������ ���
-- >ALL, < ALL ��δ� ũ���� �۵���
SELECT salary 
FROM EMPLOYEES where JOB_ID = 'IT_PROG';


-- ����) job_id��  'IT_PROG'�� �������� �޴� ������ ���� ������ �޴� ������ ���
-- �Ѱ��� ������  <any , =any , >any
SELECT first_name, salary
FROM EMPLOYEES
where salary in(SELECT salary FROM EMPLOYEES where JOB_ID = 'IT_PROG');            --������ ũ��


SELECT first_name, salary
FROM EMPLOYEES
where salary not in(SELECT salary FROM EMPLOYEES where JOB_ID = 'IT_PROG'); 


SELECT first_name, salary
FROM EMPLOYEES
where salary =any(SELECT salary FROM EMPLOYEES where JOB_ID = 'IT_PROG');


--exists  (�߸��� ������)
SELECT first_name, salary
FROM EMPLOYEES
where EXISTS (SELECT salary FROM EMPLOYEES where JOB_ID = 'IT_PROG');



