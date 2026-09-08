-- 1) Performance Rating Distribution

SELECT 
    CASE
        WHEN performance_rating < 2 THEN '1.00 - 1.99'
        WHEN performance_rating < 3 THEN '2.00 - 2.99'
        WHEN performance_rating < 2 THEN '3.00 - 3.99'
        ELSE '4.00-5.00'
    END AS rating_range,
    COUNT(*) AS emp_count
FROM
    performance
GROUP BY rating_range
ORDER BY rating_range;

-- 2) Employee Growth Trend

SELECT 
    YEAR(hire_date) AS hire_year, COUNT(*) AS emp_hire
FROM
    employees
GROUP BY hire_year
ORDER BY hire_year;

-- 3) Employees by City

SELECT 
    city, COUNT(*) AS emp_count
FROM
    employees
GROUP BY city
ORDER BY emp_count DESC;

-- 4) Department-wise Attrition

SELECT 
    d.department_name,
    ROUND(SUM(CASE
                WHEN e.employment_status IN ('resigned' , 'terminated') THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS attribution_rate_percentage
FROM
    employees e
        JOIN
    departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY attribution_rate_percentage DESC;
