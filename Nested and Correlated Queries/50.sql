select name,salary,avg(salary) over(partition by dept_id) as avg_salary 
from emp
qualify salary>avg_salary
