1) Find the employee(s) who earn more than the overall average salary and belong to the department with the highest average salary =

SELECT 
    emp_name, salary, department
FROM
    employees
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees)
        AND department = (SELECT 
            department
        FROM
            employees
        GROUP BY department
        ORDER BY AVG(salary) DESC
        LIMIT 1);

2) Find the third-highest salary in the company =

select * from (
select emp_name , salary,
dense_rank()over(order by salary desc) as rnk
from employees
) A
WHERE rnk = 3;

3) ind employees who are earning more than their department's average salary =

select department , emp_name , salary
from employees e1
where salary > (select avg(salary) from employees e2
                  where e1.department = e2.department);

4) Find the department with the highest total salary =

select department , sum(salary) as total_salary
from employees
group by department
order by total_salary desc
limit 1;

5) Find the employees who have the minimum salary in each department =

select department ,emp_name , salary
from employees e1
where salary = (select min(salary) from employees e2
                where e1.department = e2.department);

6) Find employees whose salary is higher than the second-highest salary in the company =

select emp_name , salary  from (
select emp_name , salary ,
dense_rank()over(order by salary desc) as rnk
from employees
)A
where rnk = 1;

7) Find the top 3 highest-paid employees in the company =

select emp_name , salary  from (
select emp_name , salary ,
dense_rank()over(order by salary desc) as rnk
from employees
)A
where rnk <= 3;

8) Find the department-wise average salary and employee count, but show only departments having more than 3 employees =

select department , avg(salary) as avg_salary , count(emp_id) as total_emp
from employees
group by department
having count(emp_id) > 3;
