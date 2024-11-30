select dept_id,avg(salary) from emp
group by dept_id
order by avg(salary) desc
