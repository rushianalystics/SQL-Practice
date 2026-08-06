1) select * from employee_sales
   where salary = (select min(salary) as lowsalary 
                   from employee_sales
                   where Department = 'it') ;

2) SELECT * FROM employee_sales
   WHERE SALARY = (SELECT MAX(SALARY) AS HIGHSALARY 
                   FROM employee_sales);

3) SELECT Emp_name , Department , Salary  FROM employee_sales e
   WHERE salary > (select avg(SALARY) AS AVGSALARY 
                   FROM employee_sales
		   WHERE DEPARTMENT = e.Department);

4) SELECT * FROM employee_sales e
   WHERE salary = (select max(SALARY) AS totalSALARY 
                   FROM employee_sales
		   WHERE DEPARTMENT = e.Department);

5) select * from employee_sales
   where salary < (select avg(salary) as avgsalary 
                   from employee_sales );

6) select * from employee_sales
   where salary = (select max(salary) as maxxsalary from employee_sales
		   where department = 'it');

7) select * from employee_sales
   where salary = (select max(salary) as maxxsalary from employee_sales
		   where city = 'pune');

8) select emp_name , bonus from employee_sales
   where salary > (select avg(salary) as avgsalary 
                   from employee_sales);

9) select * from employee_sales
   where salary = (select max(salary) from employee_sales
                   where salary < (select max(salary) from employee_sales));

10) select * from employee_sales
    where salary = (select max(salary) from employee_sales
                    where salary < (select max(salary) from employee_sales
                    where salary < (select max(salary) from employee_sales)));
