use SBI_Bank;

select * from customer;
insert into customer(customer_name,acc_bal) values("sam",12000);


update customer set acc_bal=1500 where customer_id=5;

delete from customer where customer_id=4;