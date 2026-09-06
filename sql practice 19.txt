-- 1) Leave Utilization

SELECT 
    COUNT(*) AS leave_days
FROM
    attendance
WHERE
    status = 'leave';
    
-- 2) Absenteeism Rate

SELECT 
    ROUND(SUM(CASE
                WHEN status = 'absent' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS absent_rate_percentage
FROM
    attendance;
    
-- 3) Highest Paying Department

SELECT 
    d.department_name, ROUND(AVG(e.salary), 2) AS avg_salary
FROM
    employees e
        JOIN
    departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_salary DESC
LIMIT 1;

-- 4) Highest Paying Job Role

SELECT 
    designation, ROUND(AVG(salary), 2) AS avg_salary
FROM
    employees
GROUP BY designation
ORDER BY avg_salary DESC
LIMIT 1;

-- 5) Promotion Eligibility List

SELECT 
    e.employee_id, e.employee_name, p.performance_rating
FROM
    employees e
        JOIN
    performance p ON e.employee_id = p.employee_id
WHERE
    performance_rating > 4.5
ORDER BY performance_rating DESC;
