select name,age from emp
where age>all(select age  from emp where dept_id=2)
