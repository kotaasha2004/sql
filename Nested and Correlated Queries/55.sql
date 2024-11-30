select name,hire_date from emp where
hire_date =(select hire_date from emp where name='Jane Smith')
