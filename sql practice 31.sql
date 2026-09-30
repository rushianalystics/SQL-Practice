1) Find the department with the highest average salary =

  SELECT 
    department, AVG(salary) AS avg_salary
FROM
    employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;

2) Find the department with the lowest average salary =

  SELECT 
    department, AVG(salary) AS avg_salary
FROM
    employees
GROUP BY department
ORDER BY avg_salary 
LIMIT 1;

3) Find the departments where the highest salary is greater than 80,000 =

  SELECT 
    department, max(salary) as high_salary
FROM
    employees
GROUP BY department
having high_salary > 80000

4) Find the number of employees in each department and show only departments having more than 2 employees =

  SELECT 
    department, COUNT(*) AS total_emp
FROM
    employees
GROUP BY department
HAVING total_emp > 2;

5) Find the department with the highest total salary =

  SELECT 
    department, sum(salary) AS total_salary
FROM
    employees
GROUP BY department
order by total_salary desc
limit 1;

6) Find the departments where the total salary is less than 150,000 =

  SELECT 
    department, sum(salary) AS total_salary
FROM
    employees
GROUP BY department
having total_salary < 150000;

7) Find the departments where the maximum salary is greater than 100,000 and the average salary is greater than 50,000 =

  SELECT 
    department,
    MAX(salary) AS maxx_salary,
    AVG(salary) AS avg_salary
FROM
    employees
GROUP BY department
HAVING maxx_salary > 100000
    and avg_salary > 50000;

8) Find the departments where the maximum salary is greater than 100,000 OR the average salary is greater than 50,000 =

  SELECT 
    department,
    MAX(salary) AS maxx_salary,
    AVG(salary) AS avg_salary
FROM
    employees
GROUP BY department
HAVING maxx_salary > 100000
    or  avg_salary > 50000;

9) Find the departments where the total salary is greater than 200,000 and the number of employees is greater than 3 =

  SELECT 
    department,
    SUM(salary) AS total_salary,
    COUNT(*) AS total_emp
FROM
    employees
GROUP BY department
HAVING total_salary > 200000 AND total_emp > 3;
