select d.name as department_name,count(p.project_id) as no_of_project from department d
left join  project p
on d.department_id=p.department_id
group by d.department_id,d.name
order by count(p.project_id) desc
