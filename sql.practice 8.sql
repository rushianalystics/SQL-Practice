1) Find employees who joined in the year 2023 =

   select emp_name ,  joining_date 
   from employees
   where year(joining_date) = 2023;

2) Find employees who joined after 2022-01-01 =

   select emp_name ,  joining_date 
   from employees
   WHERE joining_date > '2022-01-01';

3) Find how many years each employee has been working in the company, based on today's date =

   select emp_name ,  joining_date ,
   timestampdiff( year, joining_date,curdate()) as year_work
   from employees;

4) Find the employee who joined most recently =

   select emp_name , joining_date 
   from employees
   order by joining_date desc
   limit 1;

5) Find the number of employees who joined in each year =

   select count(*) as total_employees , year(joining_date) as joining_year
   from employees
   group by year(joining_date);
