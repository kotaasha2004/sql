select e2.name from emp as e1
join emp as e2 on e1.dept_id=e2.dept_id
where e1.name='John Doe'
