1) Find employees whose salary is greater than the overall average salary of the company =

   select emp_name , salary
   from employees
   where salary > (select avg(salary) from employees);

2) Display employee name and salary. If salary is NULL, display 0 =

   select emp_name , coalesce(salary , 0) 
   from employees;

3) Find employees whose name ends with 'a' =

   select emp_name from employees
   where emp_name like '%a';

4) Find the top 2 highest-paid employees from each department =

   SELECT * FROM (
   SELECT *,
   RANK()OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS RNK
   FROM EMPLOYEES
   )A
   WHERE RNK <= 2;

5) Find the running total of salaries based on emp_id =

   select emp_name , salary ,
   sum(salary)over( order by emp_id) as running_salary
   from employees;



