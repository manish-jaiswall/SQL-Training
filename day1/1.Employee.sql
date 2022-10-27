create database emp_details;

create table employee_info(

emp_id int  primary key,
emp_name varchar(50),
citycode int

--CONSTRAINT fk_citycode FOREIGN KEY (citycode) REFERENCES CityCode (citycode)



);

select * from employee_info

--drop table employee_info

insert into employee_info values(1,'Mukesh',1)
insert into employee_info values(2,'Sheela',2)
insert into employee_info values(3,'Pranav',3)
insert into employee_info values(4,'Shubham',4)
insert into employee_info values(5,'Umang',5)
insert into employee_info values(6,'Anita',1)
insert into employee_info values(7,'Sujan',3)
insert into employee_info (emp_id,emp_name)values(8,'Geeta')
insert into employee_info (emp_id,emp_name)values(9,'Anand')

--select distinct city from  employee_info

create table CityCode(

citycode int primary key,
cityname varchar(50)


);

--drop table CityCode

insert into CityCode values(1,'Hyderabad')
insert into CityCode values(2,'Kathmandu')
insert into CityCode values(3,'Mumbai')
insert into CityCode values(4,'Pune')
insert into CityCode values(5,'Kolkata')
insert into CityCode values(6,'Jaipur')
insert into CityCode values(7,'Bangalore')


Select * from CityCode


Select * from employee_info inner join  CityCode on employee_info.citycode=CityCode.citycode
Select * from employee_info full outer join  CityCode on employee_info.citycode=CityCode.citycode
Select * from employee_info left outer join  CityCode on employee_info.citycode=CityCode.citycode
Select * from employee_info right outer join  CityCode on employee_info.citycode=CityCode.citycode
Select * from employee_info cross join  CityCode --on employee_info.citycode=CityCode.citycode






