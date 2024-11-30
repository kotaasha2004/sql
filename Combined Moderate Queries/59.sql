select name,hire_date from emp
where hire_date>=dateadd(year,-2,GETDATE())
order by hire_date
