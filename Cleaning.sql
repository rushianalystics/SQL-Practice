1) select coalesce(salary , 0) as salary
   from employee_sales;

2) select * from employee_sales
   where salary is null;

3) select emp_id , count(*) from employee_sales
   group by Emp_ID
   having count(*) > 1;

4) select trim(emp_name) 
   from employee_sales;

5) select upper(emp_name) 
   from employee_sales;
