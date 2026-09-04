-- 1) Salary by Designation

SELECT 
    designation, ROUND(AVG(salary), 2) AS avg_salary
FROM
    employees
GROUP BY designation
ORDER BY avg_salary DESC;

-- 2) Average Performance Rating

SELECT 
    ROUND(AVG(performance_rating), 2) AS emp_perfeormane_rating
FROM
    performance;
    
-- 3) Top Performers

SELECT 
    e.employee_name, e.employee_id, p.performance_rating
FROM
    employees e
        JOIN
    performance p ON e.employee_id = p.employee_id
ORDER BY p.performance_rating DESC
LIMIT 10;

-- 4) Bonus Distribution

SELECT 
    CASE
        WHEN bonus < 10000 THEN '0-10000'
        WHEN bonus < 20000 THEN '10000-20000'
        WHEN bonus < 30000 THEN '20000-30000'
        WHEN bonus < 40000 THEN '30000-40000'
        ELSE '40000-50000'
    END AS bonus_range,
    COUNT(*) AS emp_count
FROM
    performance
GROUP BY bonus_range
ORDER BY bonus_range;

-- 5) Department-wise Headcount

SELECT 
    d.department_name, COUNT(e.employee_id) AS total_emp
FROM
    departments d
        JOIN
    employees e ON d.department_id = e.department_id
GROUP BY department_name
ORDER BY total_emp DESC;
