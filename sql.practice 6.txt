1) Find the running total of salaries based on emp_id =

   select emp_name , salary ,
   sum(salary)over( order by emp_id) as running_salary
   from employees;

2) Find the running total of salary for each department separately =

   select  department , emp_name , salary ,
   sum(salary)over( partition by department order by emp_id) as running_salary
   from employees;

3) Find the salary rank of every employee within their department =

   select  department , emp_name , salary ,
   RANK()over( partition by department order by SALARY DESC) as SALARY_RANK
   from employees;

4) Find the top 2 highest-paid employees from each department =

   SELECT * FROM (
   SELECT *,
   RANK()OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS RNK
   FROM EMPLOYEES
   )A
   WHERE RNK <= 2;

5) Find the 2nd highest salary in each department, but return the employee name and Salary = 

   SELECT * FROM (
   SELECT EMP_NAME , SALARY ,
   DENSE_RANK()OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS RNK
   FROM EMPLOYEES
   )A
  WHERE RNK = 2;

