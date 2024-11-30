select name,hire_date from emp
where hire_date=(select min(hire_date) from emp)
