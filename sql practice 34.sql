1) Find the highest-paid employee in each department and display the employee name, department name, and salary =

select emp_name , department_name , salary 
from (
select e.emp_name , d.department_name , e.salary,
dense_rank()over(partition by d.department_id order by e.salary desc) as rnk
from employees e
inner join departments d
on e.department_id = d.department_id
) A
where rnk = 1;

2) Find the department with the highest total salary and display the department name and total salary =

select sum(e.salary) as total_salary , d.department_name
from employees e
right join departments d
on e.department_id = d.department_id
group by department_name
order by total_salary desc
limit 1;

3) Find employees who do not belong to any department =

select e.emp_name , d.department_name 
from employees e
left join departments d
on e.department_id = d.department_id
where d.department_name is null;

4) Find departments that have more than 2 employees and display the department name and employee count =

select count(e.emp_id) as emp_count ,  d.department_name
from employees e
right join departments d
on e.department_id = d.department_id
group by d.department_name
having emp_count > 2;

5) Find the employee with the second-highest salary in each department and display employee name, department name, and salary =

select emp_name , department_name , salary
from (
select e.emp_name , d.department_name , e.salary,
dense_rank()over(partition by d.department_id order by e.salary desc) as rnk
from employees e
inner join departments d
on e.department_id = d.department_id
) A
where rnk = 2;

6) Find departments where the highest-paid employee earns more than 70,000 =

select d.department_name , max(e.salary) as high_paid
from employees e
right join departments d
on e.department_id = d.department_id
group by d.department_name
having high_paid > 70000;
