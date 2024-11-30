-- first
select employee.name, d.dept_id, d.no_of_projects 
from employee join 
    (select dept.dept_id, COUNT(*) as no_of_projects 
    from dept join project 
    on dept.dept_id = project.dept_id 
    group by dept.dept_id) 
as d on d.dept_id = employee.dept_id

-- second 
SELECT employee.name, dept.dept_id, COUNT(project.project_id) AS no_of_projects
FROM employee
JOIN dept ON employee.dept_id = dept.dept_id
JOIN project ON dept.dept_id = project.dept_id
GROUP BY employee.name, dept.dept_id;
