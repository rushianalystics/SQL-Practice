1) Find employees who have the same salary as another employee =

SELECT emp_name, salary
FROM employees
WHERE salary IN (
    SELECT salary
    FROM employees
    GROUP BY salary
    HAVING COUNT(*) > 1
);

2) Find the second-highest salary in the employees table =

select * from (
select emp_name , salary,
dense_rank()over(order by salary desc) as rnk
from employees
) A
WHERE rnk = 2;

3) Find the highest-paid employee in each department =

select * from (
select emp_name , salary , department ,
dense_rank()over(partition by department order by salary desc) as rnk
from employees
) A
WHERE rnk = 1;

4) Find employees who earn more than the average salary of their own department =

select department , salary 
from employees e1
where salary > (select avg(salary) from employees e2
                   where e1.department = e2.department);

5) Find the top 2 highest-paid employees in each department =

select * from (
select emp_name , salary , department ,
dense_rank()over(partition by department order by salary desc) as rnk
from employees
) A
WHERE RNK <= 2;

6) Find the employee who joined most recently in each department =

select * from (
select emp_name , salary , department , joining_date ,
dense_rank()over(partition by department order by joining_date desc) as rnk
from employees
) A
WHERE RNK = 1;

7) Find departments where the average salary is greater than 50,000 =

SELECT DEPARTMENT , AVG(SALARY) AS AVG_SALARY 
FROM employees
group by DEPARTMENT
having AVG_SALARY > 50000;

8) Find the employee(s) with the highest salary in the company =

SELECT EMP_NAME , SALARY
FROM employees
WHERE SALARY = (SELECT MAX(SALARY) FROM employees);

9) Find the department with the highest average salary =

select department , avg(salary) as high_avg_salary
from employees
group by department
order by high_avg_salary desc
limit 1;

10) Find departments where the total salary is greater than 200,000 =

select department , sum(salary) as total_salary
from employees
group by department
having total_salary > 200000;
