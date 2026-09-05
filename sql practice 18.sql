-- 1. Gender Diversity Ratio

SELECT 
    gender,
    COUNT(*) AS total,
    ROUND(COUNT(*) * 100 / (SELECT 
                    COUNT(*)
                FROM
                    employees),
            2) AS percentage
FROM
    employees
GROUP BY gender;

-- 2) Age Distribution

SELECT 
    CASE
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50-59'
    END AS age_group,
    COUNT(*) AS emp_count
FROM
    employees
GROUP BY age_group
ORDER BY age_group;

-- 3) Average Employee Tenure

SELECT 
    ROUND(AVG(DATEDIFF(CURDATE(), hire_date)) / 365,
            2) AS avg_tenure_year
FROM
    employees;

-- 4) New Hires by Month

SELECT 
    DATE_FORMAT(hire_date, '%y-%m') AS hire_month,
    COUNT(*) AS new_hire
FROM
    employees
GROUP BY hire_month
ORDER BY hire_month;

-- 5) Employee Attendance Rate

SELECT 
    ROUND(SUM(CASE
                WHEN status = 'present' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS attendance_rate_percentage
FROM
    attendance;
