1) Find the employees whose salary is greater than the average salary of all employees = 
   
SELECT 
    emp_name, salary
FROM
    employees
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees);

2) Find the highest-paid employee in each department =

select * from (
select department , emp_name , salary,
rank()over(partition by department order by salary desc) as rnk
from employees
) A
WHERE rnk = 1;

3) Find the second-highest salary in the company =

select emp_name , salary from (
select emp_name , salary ,
dense_rank()over(order by salary desc) as rnk
from employees 
) a
where rnk = 2;

4) Find employees who earn more than the average salary of their own department =

select department , emp_name , salary
from employees e1
where salary > (select avg(salary) from employees e2
                 where e1.department = e2.department);

5) Find the employees who have the highest salary in each department =

select * from (
select department , emp_name , salary,
dense_rank()over(partition by department order by salary desc) as rnk
from employees
) A
where rnk = 1;

6) Find the employees who joined most recently in each department =

select emp_name , department , joining_date
from employees e1
where joining_date = (select max(joining_date) from employees e2
                        where e1.department = e2.department);

7) Find the departments where at least one employee has a salary greater than 100,000 =

SELECT 
    department
FROM
    employees
WHERE
    salary > 100000
GROUP BY department;

8) Find employees who have the same salary as another employee =

SELECT emp_name, salary
FROM employees
WHERE salary IN (
    SELECT salary
    FROM employees
    GROUP BY salary
    HAVING COUNT(*) > 1
);
