step 1)  create database rushi;

step 2)  use rushi;

step 3)  create table maihu(
         maihu_id int  primary key,
         name varchar(100) not null,
         age int not null,
         city char(50) not null,
         salary numeric,
         email_id char(50) unique
         );

step 4)  insert into maihu (maihu_id , name , age , city , salary , email_id)
         values
         (1,'adi' , 21,'manchar',30000,'adi21@gamil.com'),
         (2,'yash' , 22 , 'pune', 35000, 'yash22@gmail.com'),
         (3,'paju' , 23, 'junner',40000,'paju23@gmail.com'),
         (4,'kaustubh',24,'manchar',45000,'kaustubh24@gmail.com');

step 5)  select * from maihu;
