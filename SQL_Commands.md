#### to check sql is install or not

mysql --version





#### to login sql in cmd

mysql -u root -p



##### comments to create  new db and show db

create database anudip;

show databases;

use anudip;

show tables;







##### create a table



create table student(

&#x20;   student\_id int,

&#x20;   student\_name varchar(25),

&#x20;   age int,

&#x20;   grade varchar(5));



###### create table using autoincrement primary key:

&#x20;create table employee1(emp\_id int auto\_increment primary key,emp\_name varchar(25),emp\_dep varchar(25),salary decimal);





##### insert into table



&#x20;insert into student(student\_id,student\_name,age,grade) values(1,"sherin",22,"O"),

&#x20;   (2,"gowtham",27,"A"),

&#x20;   (3,"yashika",21,"B"),

&#x20;   (4,"ruffia",21,"C");





##### select



select \* from student;

select student\_name from student;

select student\_name,age from student;

select \* from student where student\_id=3;

select student\_name from student where student\_id=1;

select student\_name from student where grade="B";





##### update

update student set age=15 where student\_id=3;

update student set student\_name ="yashr" where student\_id=3;









##### delete

delete from employee1 where emp\_id=3;









##### alter

ALTER TABLE table\_name

MODIFY COLUMN column\_name FLOAT;



ALTER TABLE employee

MODIFY COLUMN salary DECIMAL(10,2);











##### Data Control Language

##### \-- Grant, Revoke





##### User Creation:

create user "sherin" @"localhost" identified by "sherin@123";





##### Permissions

grant select on sbi\_bank.\* to "sherin" @"localhost";



create user "yashika"@"localhost" identified by "yashika@123";

grant select on sbi\_bank.\* to "yashika"@"localhost";





grant insert on sbi\_bank.\* to "sherin" @"localhost";

grant all on sbi\_bank.\* to "sherin"@"localhost";



\-- grant update on sbi\_bank.\* to "sherin"@"localhost";

\-- grant delete on sbi\_bank.\* to "sherin"@"localhost";



##### 

