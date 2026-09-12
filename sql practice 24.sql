1) Find employees who have the minimum salary in the company =

   select emp_name , salary 
   from employees
   where salary = (select min(salary) from employees);

2) Find the employee(s) with the lowest salary in each department =

   select emp_name , salary 
   from employees e1
   where salary = (select min(salary) from employees e2
	           where e2.department  = e1.department );

3) Find employees who do NOT have any other employee in the same department earning a higher salary =

   select e1.emp_name ,  e1.salary 
   from employees e1
   where not exists  (select 2 from employees e2
			where e2.department  = e1.department and e2.salary > e1.salary);

4) Find employees who are earning more than Rahul's salary =

   select emp_name , salary 
   from employees
   where salary > (select salary from employees
                  where emp_name = 'rahul');
