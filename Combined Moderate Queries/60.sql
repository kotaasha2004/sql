select dept_id,avg(salary) as avg_saraly,count(*) as no_of_emp from emp
group by dept_id
having no_of_emp>2
