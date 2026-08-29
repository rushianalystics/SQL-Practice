1) Create a salary category: Salary >= 60000 → HIGH , Salary >= 40000 → MEDIUM ,Otherwise → LOW =

   select emp_name , salary ,
   case
   when salary >= 60000 then 'high'
   when salary >= 40000 then 'medium'
   else 'low'
   end as salary_category
   from employees;

2) Count how many employees are in each salary category =

   select count(*) ,
   case
   when salary >= 60000 then 'high'
   when salary >= 40000 then 'medium'
   else 'low'
   end as salary_category
   from employees
   group by salary_category

3) Find the total salary paid to employees in each salary category =

   select sum(salary) as total_salary ,
   case
   when salary >= 60000 then 'high'
   when salary >= 40000 then 'medium'
   else 'low'
   end as salary_category
   from employees
   group by salary_category

4) Find the average salary of employees, but treat NULL salaries as 0 =

   select AVG(COALESCE(salary, 0)) as average_salary
   from employees;

5) Find employees whose salary is NULL and display their salary as 0.

   select emp_name ,COALESCE(salary, 0) as salary
   from employees
   where salary is null;
