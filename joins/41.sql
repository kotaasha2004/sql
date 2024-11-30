select employee.name, project.project_id from employee
left join  project on employee.dept_id = project.dept_id
where project.project_id is null
