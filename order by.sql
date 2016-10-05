--order by
select employee_id, department_id, salary
  from EMPLOYEES
order by department_id asc;

select employee_id, department_id, salary
  from EMPLOYEES
order by department_id asc, salary asc;

select employee_id, department_id, salary
  from EMPLOYEES
order by department_id asc, salary desc;