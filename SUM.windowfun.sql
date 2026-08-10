1) select emp_name , salary ,
   sum(salary) over (order by salary desc) as totalsalary
   from employee_sales;

2) select emp_name , bonus ,
   sum(bonus) over (order by bonus desc) as totalbonus
   from employee_sales;

3) select emp_name , salary , Department ,
   sum(salary) over (partition by Department order by salary desc) as totalsalary
   from employee_sales;

4) select emp_name , bonus , Department ,
   sum(bonus) over (partition by department order by bonus desc) as totalbonus
   from employee_sales;

5) select sales , department ,
   sum(sales) over ( order by sales desc) as totalsales
   from employee_sales;

6) select sales , department ,
   sum(sales) over (partition by Department order by sales desc) as totalsales
   from employee_sales;
