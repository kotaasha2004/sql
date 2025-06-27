select department_id from employee
group by department_id
having avg(salary)>55000 and count(*)>1
