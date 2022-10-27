create  database day4


--Q.1



CREATE TABLE person(per_no INT PRIMARY KEY,First_name varchar(20),Last_name varchar(20))

select * from person

insert into person values (1,'manish','jaishwal')
insert into person values (2,'mukesh','kumar')
insert into person values (3,'ankit','gupta')
insert into person values (4,'nisha','hiremani')
insert into person values (5,'sanjana','kumari')
insert into person values (6,'anand','kumar')

select First_name,Last_name, concat(First_name,' ',Last_name) as Full_name from person


--Q.2


CREATE TABLE people(	
emp_id INT primary key, 	
emp_name varchar(20),	
emp_city varchar(20),	
state_name varchar(20)	
);	

insert into people values(101,'mukesh','delhi','dehli')	
insert into people values(102,'manish','delhi','dehli')	
insert into people values(103,'anand','delhi','dehli')	
insert into people values(104,'ankit','delhi','dehli')	
insert into people values(105,'blinty','delhi','dehli')	

insert into people values(106,'nisha','mumbai','maharastra')	
insert into people values(107,'poojitha','mumbai','maharastra')	
insert into people values(108,'sanjana','mumbai','maharastra')	
select* from people	

CREATE TABLE country(	
district_id INT primary key,	
emp_id INT,	
district varchar(20),	

foreign key(emp_id) references people(emp_id)	
)	

insert into country values(10001,101,'shahdara')	
insert into country values(10002,102,'central')	
insert into country values(10003,103,'new dehli')	
insert into country values(10004,104,'south')	
insert into country values(10005,105,'east')	

insert into country values(10006,106,'pune')	
insert into country values(10007,107,'thane')	
insert into country values(10008,108,'mumbai')	

select* from country	


select country.district_id, people.emp_name, people.emp_city,country.district from people 	
INNER JOIN country	
ON people.emp_id = country.emp_id	

select country.district_id, people.emp_name, people.emp_city,country.district from people 	
FULL OUTER JOIN country	
ON people.emp_id = country.emp_id	

delete from country where district_id = 10008	


select country.district_id, people.emp_name, people.emp_city,country.district from people 	
LEFT OUTER JOIN country	
ON people.emp_id = country.emp_id	

select country.district_id, people.emp_name, people.emp_city,country.district from people 	
RIGHT OUTER JOIN country	
ON people.emp_id = country.emp_id	



--Q.3

create table city (city_code INT primary key,city_name varchar(20))

insert into city values(1001,'Delhi')
insert into city values(1002,'Jaipur')
insert into city values(1003,'Kota')
insert into city values(1004,'Patna')
insert into city values(1005,'Hyderabad')
insert into city values(1006,'Pune')
insert into city values(1007,'Kolkata')
insert into city values(1008,'Mumbai')

select * from city

select city_code,SUBSTRING(city_name,1,3) from city
	


--Q.4


CREATE TABLE employee(
emp_id INT primary key,
emp_name varchar(20),
dep_name varchar(30)
)

insert into employee values(101,'ankit','Aqua')
insert into employee values(102,'mukesh','Agni')
insert into employee values(103,'manish','casino')
insert into employee values(104,'nisha','bingo')
insert into employee values(105,'poojitha','trading')
insert into employee values(106,'anand','sports')


insert into employee values(107,'sanjana','Aqua')
insert into employee values(108,'jyoti','Agni')
insert into employee values(109,'shilpa','casino')
insert into employee values(110,'parnav','bingo')
insert into employee values(111,'AkshayaLaxmi','trading')
insert into employee values(112,'Utshayab','sports')

insert into employee values(113,'soaib','Aqua')
insert into employee values(114,'ravi','Agni')
insert into employee values(115,'raju','casino')
insert into employee values(116,'neelam','bingo')
insert into employee values(117,'raksha','trading')
insert into employee values(118,'archana','sports')

select* from employee

select* from employee order by dep_name DESC,emp_name ASC;


--Q.5

CREATE TABLE employee_sal(emp_id INT primary key,emp_name varchar(20) NOT NULL UNIQUE,salary BIGINT)

SELECT * from employee_sal

insert into employee_sal values(10001,'mukesh',60000)
insert into employee_sal values(10002,'ankit',55000)
insert into employee_sal values(10003,'manish',50000)
insert into employee_sal values(10004,'nisha',70000)
insert into employee_sal values(10005,'anand',40000)
insert into employee_sal values(10006,'sanjana',45000)
insert into employee_sal values(10007,'poojitha',52000)
insert into employee_sal values(10008,'raju',65000)
insert into employee_sal values(10009,'neelam',80000)

select * from employee_sal where salary > 50000 and salary<80000


--Q.6


CREATE TABLE employee1(
emp_id INT primary key,
emp_name varchar(20) NOT NULL UNIQUE,
salary BIGINT)

SELECT * from employee1

insert into employee1 values(10001,'mukesh',60000)
insert into employee1 values(10002,'ankit',50000)
insert into employee1 values(10003,'manish',50000)
insert into employee1 values(10004,'nisha',70000)
insert into employee1 values(10005,'anand',70000)
insert into employee1 values(10006,'sanjana',60000)
insert into employee1 values(10007,'poojitha',60000)
insert into employee1 values(10008,'raju',70000)
insert into employee1 values(10009,'neelam',80000)

select emp_name,salary from employee1
WHERE salary
IN ( SELECT salary FROM employee1 GROUP BY salary HAVING COUNT(salary) > 1) order by salary


--Q.7

CREATE TABLE new_sudetnts(
s_id INT primary key,
s_name varchar(20),
s_dep varchar(20),
joining_date date
)

insert into new_sudetnts values(1001,'mukesh','CSE','02-01-2020')
insert into new_sudetnts values(1002,'ankit','ECE','01-01-2021')
insert into new_sudetnts values(1003,'manish','ME','01-15-2022')
insert into new_sudetnts values(1004,'anand','CSE','02-01-2020')
insert into new_sudetnts values(1005,'raju','CE','01-01-2020')
insert into new_sudetnts values(1006,'rani','EEE','02-01-2019')
insert into new_sudetnts values(1007,'neelam','ECE','08-10-2020')

select * from new_sudetnts

select * from new_sudetnts where joining_date>'02-29-2020'


--Q.9


CREATE TABLE orders1(
order_id INT primary key,
pur_amount BIGINT,
order_date date
)

insert into orders1 values(1001,200000,'01-05-2022')
insert into orders1 values(1002,3000000,'05-01-2022')
insert into orders1 values(1003,200000,'07-08-2022')
insert into orders1 values(1004,5000000,'10-09-2022')
insert into orders1 values(1005,100000,'11-10-2022')
insert into orders1 values(1006,6000000,'01-08-2021')
insert into orders1 values(1007,7000000,'12-10-2021')
insert into orders1 values(1008,4000000,'07-01-2022')

select * from orders1



select MAX(pur_amount) from orders1
where pur_amount in (select pur_amount from orders where order_date>='05-01-2022' )