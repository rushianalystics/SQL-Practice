1) select emp_name , 
   row_number() OVER (ORDER BY Salary ASC) as rownumber
   from employee_sales ;

2) select emp_name , 
   row_number() OVER (ORDER BY emp_name desc) as rownumber
   from employee_sales ;

3) select emp_name , salary ,
   row_number() OVER (ORDER BY salary desc) as rownumber
   from employee_sales ;

4) select emp_name , salary ,
   row_number() OVER (ORDER BY salary asc) as rownumber
   from employee_sales ;

5) select emp_name , Department , salary ,
   row_number() OVER (partition by department order by salary asc) as rownumber
   from employee_sales ;

6) select emp_name , bonus , department ,
   row_number() over(partition by department order by salary desc ) as rownu
   from employee_sales;

7) select emp_name , Department , sales ,
   row_number() over (partition by department order by sales desc) as salesnu
   from employee_sales;
