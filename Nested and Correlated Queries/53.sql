select dept.dept_name,avg(emp.salary) as avg_salary from dept
left join emp
on dept.dept_id=emp.dept_id
group by dept.dept_name
having avg_salary>55000
