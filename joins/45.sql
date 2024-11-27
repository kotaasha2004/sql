select dept.dept_name,avg(salary) from dept
left join emp on dept.dept_id=emp.dept_id
group by dept.dept_name
limit 1
