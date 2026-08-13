1) select emp_name , salary ,
   lag(salary) over (order by salary desc) as previoussalary
   from employee_sales;

2) select emp_name , salary , department ,
   lag(salary) over (partition by department order by salary desc) as previoussalary
   from employee_sales;

3) select emp_name , bonus ,
   lag(bonus) over ( order by bonus desc) as previousbonus
   from employee_sales;

4) select emp_name , bonus , department ,
   lag(bonus) over ( partition by department order by bonus desc) as previousbonus
   from employee_sales;

5) select sales, Department,
   lag(sales) over (order by sales desc) as previoussales
   from employee_sales;

6) select sales, Department,
   lag(sales) over (partition by department order by sales desc) as previoussales
   from employee_sales;
