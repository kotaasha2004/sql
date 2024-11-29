--first approch using offset
select name,salary from emp 
order by salary desc
Limit 1 offset 1
--second approach using subquery
select name, salary from emp 
where salary<(select max(salary) from emp)
order by salary desc
limit 1
