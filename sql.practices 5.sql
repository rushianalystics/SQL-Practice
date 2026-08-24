1) Find the highest-paid employee from each department =
   
   select * from (
   select * ,
   row_number()over(partition by department order by salary desc) as rnk
   from employees
   ) a
   where rnk = 1;

2) Find the latest joined employee from each department using ROW_NUMBER() =

   select * from (
   select * ,
   row_number()over(partition by department order by joining_date desc) as rnk
   from employees
   ) a
   where rnk = 1;

3) Find each employee's salary and the previous employee's salary =

   select emp_name , salary ,
   lag(salary)over( order by emp_id) as previous_salary
   from employees;

4) Find each employee's salary and the next employee's salary based on emp_id =

   select emp_name , salary ,
   lead(salary)over( order by emp_id) as next_salary
   from employees;

5) Find the difference between each employee's salary and the previous employee's salary =

   select emp_name , salary ,
   lag(salary)over( order by emp_id) as previous_salary,
   salary - lag(salary) over(order by emp_id ) as difference
   from employees;
