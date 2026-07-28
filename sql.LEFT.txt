1) SELECT *
   FROM Employee_Sales e
   LEFT JOIN Departments d
   ON e.Department = d.Department;

2) SELECT *
   FROM Employee_Sales e
   LEFT JOIN Departments d
   ON e.Department = d.Department
   WHERE d.Department IS NULL;

3) SELECT e.Emp_Name
   FROM Employee_Sales e
   LEFT JOIN Departments d
   ON e.Department = d.Department
   WHERE d.Department IS NULL;

4) SELECT D.DEPARTMENT , AVG(E.SALARY) AS AVGSALARY
   FROM DEPARTMENTS D
   LEFT JOIN EMPLOYEE_SALES E
   ON D.DEPARTMENT = E.DEPARTMENT
   GROUP BY D.DEPARTMENT;

5) SELECT D.DEPARTMENT , SUM(E.SALARY) AS TOTALSALARY
   FROM DEPARTMENTS D
   LEFT JOIN EMPLOYEE_SALES E
   ON D.DEPARTMENT = E.DEPARTMENT
   GROUP BY D.DEPARTMENT;

