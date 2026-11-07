create database travel_db;

use travel_db;

create table city
(city_id int auto_increment primary key,
city_name varchar(20) not null,
country varchar(20));



create table flight(
flight_id int auto_increment primary key,
from_city int,to_city int,
flight_date date,
foreign key(from_city) references city(city_id),
foreign key(to_city) references city(city_id));


insert into city(city_name,country) values("Delhi","India"),
("Dubai","UAE"),
("Paris","France"),
("NewYork","USA");

select * from city;

-- delhi to dubai
-- dubai to paris
-- paris to newyork
-- newyork to delhi

insert into flight(from_city,to_city,flight_date) values(1,2,"2026-11-08"),(2,3,"2026-11-30"),(3,4,"2026-12-25"),(4,1,"2027-01-05");

select * from flight;





use travel_db;

create table passenger(
passenger_id int auto_increment primary key,
passenger_name  varchar(25),
flight_id int,
foreign key(flight_id) references flight(flight_id)
);

insert into passenger(passenger_name,flight_id) values("Sherin",3),("Yashika",2),("Dhanu",4);
insert into passenger(passenger_name,flight_id) values("Gowtham",1);
insert into passenger(passenger_name,flight_id) values("Yaskraf",1);

select * from passenger;


select * from city;
select * from flight;
select * from passenger;


select passenger_name from passenger where flight_id=1;
select passenger_name from passenger where flight_id=3;
