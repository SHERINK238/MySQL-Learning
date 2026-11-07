create database SBI_Bank;
use SBI_Bank;

create table customer(
customer_id int auto_increment primary key,
customer_name varchar(25),
acc_bal decimal(20,2) 
);


insert into customer(customer_name,acc_bal) values("Sherin",30000000.25),
("Yashika",50000000.79),
("Gowtham",1000000),
("Dhanu",25000.03);

select * from customer;

-- Data Control Language
-- Grant, Revoke 


-- User Creation: 
create user "sherin" @"localhost" identified by "sherin@123";


-- Permissions
grant select on sbi_bank.* to "sherin" @"localhost";

create user "yashika"@"localhost" identified by "yashika@123";
grant select on sbi_bank.* to "yashika"@"localhost";


grant insert on sbi_bank.* to "sherin" @"localhost";
grant all on sbi_bank.* to "sherin"@"localhost";

-- grant update on sbi_bank.* to "sherin"@"localhost";
-- grant delete on sbi_bank.* to "sherin"@"localhost";


-- revoke
revoke select on sbi_bank.* from "yashika"@"localhost";

