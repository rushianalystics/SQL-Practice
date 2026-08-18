1) select * from employee_sales
   where salary < 0;

2) select * from employee_sales
   where emp_name = '' ;

3) select * from employee_sales
   where Joining_Date is null ;

4) select * ,
   case 
   when salary < 0 then 0
   else salary
   end as cleansalary
   from employee_sales ;

5) select lower(emp_name) as lowercase 
   from employee_sales;
