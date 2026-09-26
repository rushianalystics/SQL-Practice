1) Find the department with the lowest average salary and display all employees from that department =

select e.emp_name , d.department_name , e.salary
from employees e
inner join departments d
on e.department_id = d.department_id
where d.department_id = (select d.department_id
	                from employees
                        group by department_id
                        order by avg(salary)
                        limit 1
                        );

2) Find all employees along with their department names, including employees who are not assigned to any department.    

select e.emp_name , d.department_name , d.department_id
from employees e
left join departments d
on e.department_id = d.department_id;

3) Find the number of employees in each department =

select count(e.emp_id) as nuofemp , d.department_name
from employees e
inner join departments d
on e.department_id = d.department_id
group by d.department_name;

4) Find all departments that have no employees =

select count(e.emp_id) as nuofemp , d.department_name
from employees e
right join departments d
on e.department_id = d.department_id
group by d.department_name
having nuofemp = 0;

5) Find the department with the highest total salary =

select sum(e.salary) as total_salary , d.department_name 
from employees e
right join departments d
on e.department_id = d.department_id
group by d.department_name
order by total_salary desc
limit 1;

6) Find employees who earn more than the average salary of their department =

select e.emp_name , e.salary , d.department_name 
from employees e
inner join departments d
on e.department_id = d.department_id
where e.salary > (select avg(e2.salary)
                   from employees e2
                   where e2.department_id = e.department_id
                  );				
