1) Find employees whose department has at least one employee earning more than 60,000 =
  
   SELECT E1. EMP_NAME , E1.DEPARTMENT FROM EMPLOYEES E1
   WHERE exists (SELECT 1 FROM employees E2
                 WHERE E1.DEPARTMENT = E2.department
                 AND E2.SALARY > 60000);

2) Find departments where at least one employee has salary greater than 55,000 =

   SELECT E1.DEPARTMENT FROM EMPLOYEES E1
   WHERE exists (SELECT 1 FROM employees E2
                 WHERE E1.DEPARTMENT = E2.department
                 AND E2.SALARY > 55000);

3) Find employees who are NOT managers of anyone =

   SELECT E1.EMP_NAME FROM employees E1
   WHERE NOT exists (SELECT 1 FROM EMPLOYEES E2
                     WHERE E2.manager_id = E1.emp_id );

4) Find salaries that are repeated more than once =

   SELECT SALARY , COUNT(*) AS SALARYREP 
   FROM employees
   GROUP BY SALARY
   HAVING  COUNT(*) > 1;

5) Find employees who have the same salary as another employee = 

   SELECT E1.EMP_NAME , E1.SALARY
   FROM EMPLOYEES E1
   WHERE EXISTS (SELECT 1 FROM EMPLOYEES E2
                 WHERE E1.SALARY = E2.SALARY 
                 AND E1.EMP_ID <> E2.EMP_ID);
                   
	
                    
