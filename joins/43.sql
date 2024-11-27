select dept.dept_name 
from  dept
where dept.dept_name not in (
select dept.dept_name
from emp
left join dept on emp.dept_id=dept.dept_id
);

