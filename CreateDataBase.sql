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


       2ND DATABASE 


step 1) create database dnynu;

step 2) use dnynu;

step 3) create table rushi(
        rushi_id int  primary key,
        name varchar(100) not null,
        age int not null,
        city char(50) not null,
        email_id char(50) unique,
        education varchar(50) not null,
        salary char(50) not null
        );

step 4) insert into rushi (rushi_id , name , age , city ,  email_id, education, salary)
        values
        (1,'adi' , 21,'manchar','adi21@gamil.com','be','fresher'),
        (2,'yash' , 22 , 'pune', 'yash22@gmail.com','te','fresher'),
        (3,'paju' , 23, 'junner','paju23@gmail.com','data analyst',30000),
        (4,'kaustubh',24,'manchar','kaustubh24@gmail.com', 'be','fresher');

        select * from rushi;
