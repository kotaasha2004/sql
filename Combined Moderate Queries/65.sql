--first
select name,salary,avg(age)over(partition by dept_id) as avg_age from emp 
qualify age>avg_age
--second
select e1.name, e1.salary from emp as e1
where e1.age > (
    select avg(e2.age) from emp as e2
    where e1.dept_id = e2.dept_id
);
