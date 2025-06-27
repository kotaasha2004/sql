SELECT d.name AS department_name, COUNT(e.emp_id) AS total_employees
FROM Department d
JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.department_id, d.name
ORDER BY total_employees DESC
LIMIT 1;

