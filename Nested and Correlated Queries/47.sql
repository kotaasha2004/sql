--from total avg salary
select name,salary from emp where salary>(select avg(salary) from emp)
--from department wise avg salary
select name,avg(salary) over(partition by dept_id) as avg_salary from emp
qualify  salary > avg_salary
