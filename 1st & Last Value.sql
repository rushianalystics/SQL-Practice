    * FIRST VALUE

1) select emp_name ,  salary , department ,
   first_value(salary)over(partition by Department order by salary desc) as highsalary
   from employee_sales;

2) select emp_name ,  bonus , department ,
   first_value(bonus)over(partition by Department order by bonus desc) as highbonus
   from employee_sales;

3) select emp_name ,  sales , department ,
   first_value(sales)over(partition by Department order by sales desc) as highsales
   from employee_sales;

    * LAST VALUE

1) select emp_name , salary , department ,
   last_value(salary)over(partition by department order by salary desc 
   rows between unbounded preceding and unbounded following) as lowestsalary
   from employee_sales;

2) select emp_name , sales , department ,
   last_value(sales)over(partition by department order by sales desc 
   rows between unbounded preceding and unbounded following) as lowestsales
   from employee_sales;

3) select emp_name , bonus , department ,
   last_value(bonus)over(partition by department order by bonus desc 
   rows between unbounded preceding and unbounded following) as lowestbonus
   from employee_sales;
