--first
select name,salary from emp
 order by salary desc
 limit 1 offset 3
--second
 WITH RankedSalaries AS (
    SELECT name, salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rank
    FROM emp
)
SELECT name, salary
FROM RankedSalaries
WHERE rank = 3;
