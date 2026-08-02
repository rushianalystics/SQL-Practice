1) select now();

2) select current_date();

3) select year(joining_date) as joiningyear , 
   month(joining_date) as joiningmonth , 
   day(joining_date) as joiningdate
   from employee_sales;

4) select datediff('2021-05-10' , '2018-02-18') as datediff 
   from employee_sales
   limit 1;

5) select extract(year from '2022-8-1') as curryear , 
   extract(month from '2022-8-1') as currmonth ,
   extract(day from '2022-8-1') as currday
   from employee_sales
   limit 1;


