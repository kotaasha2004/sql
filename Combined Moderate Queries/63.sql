select dept.dept_name,count(project.project_id) as no_of_projects from dept
join project
on dept.dept_id=project.dept_id
group by dept.dept_name
order by no_of_projects 
