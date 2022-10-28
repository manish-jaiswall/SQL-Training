create database emp_details;

create table employee_info(

emp_id int  primary key,
emp_name varchar(50),
citycode int,
emp_salary int

CONSTRAINT fk_citycode FOREIGN KEY (citycode) REFERENCES CityCode (citycode)



);

select * from employee_info


--drop table employee_info

insert into employee_info values(1,'Mukesh',1,5000)
insert into employee_info values(2,'Sheela',2,10000)
insert into employee_info values(3,'Pranav',3,15000)
insert into employee_info values(4,'Shubham',4,20000)
insert into employee_info values(5,'Umang',5,25000)
insert into employee_info values(6,'Anita',1,30000)
insert into employee_info values(7,'Sujan',3,40000)
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

select emp_name,emp_salary from employee_info where employee_info.citycode=1

create procedure emp1 @cit varchar(20), @sal int as

select emp_name,emp_salary,cityname from employee_info,CityCode 
where employee_info.emp_salary>=@sal and CityCode.cityname=@cit 
and employee_info.citycode=CityCode.citycode

exec emp1 'Hyderabad', 20000
exec emp1 'Mumbai', 15000

---------------------------------------------------------------------------------------------

alter procedure emp2 @cit varchar(20), @sal int as

declare @citycode as int
set @citycode=( select citycode from CityCode where cityname=@cit)

select emp_name,emp_salary,cityname from employee_info,CityCode 

where employee_info.emp_salary>=@sal  and CityCode.cityname=@cit 

and employee_info.citycode=@citycode

exec emp2 'Hyderabad',20000














