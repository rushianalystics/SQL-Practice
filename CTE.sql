1) with highsalary as (
   select * from employee_sales
   )
   select * from highsalary;

2) with highsalary as (
   select * from employee_sales
   )
   select emp_name , department , salary from highsalary;

3) with highsalary as (
   select * from employee_sales
   where salary >= 50000
   )
   select emp_name , department , city , salary from highsalary;

4) with avgsalary as (
   select department , avg(salary) as avgsalary
   from employee_sales
   group by Department
   )
   select *  from avgsalary;

5) with mixsalary as (
   select department , max(salary) as maxalary , min(salary) as minsalary
   from employee_sales
   group by Department
   )
   select *  from mixsalary;

6) with dept_sales as (
   select department , sum(sales) as total_sales 
   from employee_sales
   group by Department
   )
   select *  from dept_sales;

7) with emp_count as (
   select department , count(Emp_ID) as emp_count
   from employee_sales
   group by Department
   )
   select *  from emp_count;
