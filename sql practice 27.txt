1) Find the highest-paid employee in each department, but return only departments where the average salary is greater than 50,000 =

SELECT emp_name, salary, department
FROM (
    SELECT emp_name,
           salary,
           department,
           DENSE_RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS rnk,
           AVG(salary) OVER (
               PARTITION BY department
           ) AS avg_salary
    FROM employees
) A
WHERE rnk = 1
  AND avg_salary > 50000;

2) Find the second-highest salary in each department =

SELECT EMP_NAME , SALARY , DEPARTMENT
FROM (
SELECT EMP_NAME , SALARY , DEPARTMENT,
dense_rank()OVER(partition by DEPARTMENT order by SALARY DESC) AS RNK
FROM employees
)A
WHERE RNK= 2;

3) Find employees who have the highest salary in their department and joined after 2022 =

SELECT emp_name, salary, department,joining_date
FROM (
    SELECT emp_name,
           salary,
           department,
           joining_date,
           DENSE_RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS rnk
    FROM employees
) A
WHERE rnk = 1
  AND joining_date > '2022-01-01'

4) Find the highest salary in each department and also display the average salary of that department =

SELECT emp_name,
       salary,
       department,
       avg_salary
FROM (
    SELECT emp_name,
           salary,
           department,
           DENSE_RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS rnk,
           AVG(salary) OVER (
               PARTITION BY department
           ) AS avg_salary
    FROM employees
) A
WHERE rnk = 1;

5) Find employees whose salary is higher than the average salary of the company and whose department has more than 3 employees =

SELECT 
    EMP_NAME, SALARY
FROM
    employees
WHERE
    SALARY > (SELECT 
            AVG(SALARY)
        FROM
            employees)
        AND department IN (SELECT 
            department
        FROM
            employees
        GROUP BY DEPARTMENT
        HAVING COUNT(*) > 3);

6) Find the highest-paid employee in the department with the highest average salary =

SELECT EMP_NAME , SALARY , DEPARTMENT , AVG_SALARY
FROM (SELECT EMP_NAME , SALARY , DEPARTMENT,
dense_rank()OVER(partition by DEPARTMENT order by SALARY DESC) AS RNK,
AVG(SALARY)OVER(partition by DEPARTMENT ) AS AVG_SALARY
FROM employees
)A
WHERE RNK = 1 AND 
AVG_SALARY = (SELECT max(AVG_SALARY) FROM (SELECT AVG(SALARY) AS AVG_SALARY
FROM employees
group by DEPARTMENT ) B
);
