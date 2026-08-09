1) select emp_name , salary ,
   dense_rank() over (order by salary desc) as denserank
   from employee_sales;

2) select emp_name , salary , department ,
   dense_rank() over (partition by Department order by salary desc) as denserank
   from employee_sales;

3) select * from (
   select * ,
   dense_rank() over (partition by department order by salary desc) as DR
   from employee_sales
   ) A
   where DR = 2;

4) select * from (
   select * ,
   dense_rank() over (partition by department order by salary desc) as DR
   from employee_sales
   ) A
   where DR = 3;

5) SELECT EMP_NAME , AGE ,
   dense_rank()OVER(order by AGE DESC) AS RATE
   FROM employee_sales;
