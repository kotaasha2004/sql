select name,salary from emp where salary in (select max(salary) from emp group by dept_id)
