select dept_id,avg(salary),count(*) from emp
group by dept_id
having avg(salary)>55000 and count(*)>1
