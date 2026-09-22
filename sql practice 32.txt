1) Find the highest-paid employee in each department who joined after 2022 =

select emp_name , department , salary , joining_date
from (
select emp_name , department , salary, joining_date,
dense_rank()over(partition by department order by salary desc) as rnk
from employees
)A
where rnk = 1 and 
joining_date > '2022-1-1';

2) Find departments where the average salary is greater than the overall company average salary =

select department , avg(salary) as avg_salary
from employees
group by department
having avg(salary) > (select avg(salary) from employees);

3) Find the department with the highest average salary and display the highest-paid employee from that department

select emp_name , salary , department
from employees e1
where department = (select department from employees 
                    group by department
                    order by avg(salary) desc
                    limit 1
)
and salary = (select max(salary)
			from employees e2
            where e2.department = e1.department);

4) Find employees whose salary is above the overall average salary but below the highest salary in their department =

select emp_name , department , salary
from employees e1
where salary > (select avg(salary) from employees
) 
and salary < (select max(salary) from employees e2
              where e1.department = e2.department);

5) Find the top 2 highest-paid employees in the department with the highest average salary =

select emp_name , department , salary , avg_salary
from (select emp_name , department , salary , 
dense_rank()over(partition by department order by salary desc) as rnk,
avg(salary)over(partition by department) as avg_salary
from employees
)A
where rnk <= 2
and avg_salary = (select max(avg_salary) from (
                  select avg(salary) as avg_salary
                  from employees
                  group by department
                  ) B
);


