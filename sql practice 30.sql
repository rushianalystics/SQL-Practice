1) Find employees who earn the highest salary in their department and whose salary is greater than the overall average salary =

select emp_name , salary , department 
from (
select emp_name , salary , department,
dense_rank()over(partition by department order by salary desc) as rnk,
avg(salary)over(partition by department)
from employees
)A
where rnk= 1
and salary > (select avg(salary) from employees);

2) Find the employee(s) with the second-highest salary in the company =

select emp_name , salary
from (
select emp_name , salary,
dense_rank()over(order by salary desc) as rnk
from employees
)A
where rnk = 2;

3) Find the department with the highest average salary and display all employees from that department =

SELECT 
    emp_name, salary, department
FROM
    employees
WHERE
    department = (SELECT 
            department
        FROM
            employees
        GROUP BY department
        ORDER BY AVG(salary) DESC
        LIMIT 1);

4) Find the highest-paid employee in each department and display their salary along with the department's average salary =

select emp_name , department , salary , avg_salary
from (select emp_name , salary , department,
dense_rank()over(partition by department order by salary desc) as rnk,
avg(salary) over(partition by department) as avg_salary
from employees
)A
where rnk = 1;

5) Find employees whose salary is higher than their department average and whose department has more than 3 employees =

select emp_name , department , salary
from employees e1
where salary > (select avg(salary) from employees e2
                where e1.department = e2.department
) 
and department in (select department from employees
                   group by department
                   having count(*) > 3);
