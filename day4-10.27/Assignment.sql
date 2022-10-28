use  stored_procedure

create table day4q1(
emp_id int primary key,
emp_name varchar(50),
Programming_Language varchar(50),
emp_Location varchar(50)
);


insert into day4q1 values(1,'Manish Jaiswal','C#','Bangalore')
insert into day4q1 values(2,'Himanshu Kumar','Java', 'Hyderabad')
insert into day4q1 values(3,'Shubham Jaiswal','C#','Hyderabad')
insert into day4q1 values(4,'Gaurav Kumar','c#','Bangalore')

select * from day4q1



create procedure emp_Bangalore @add varchar(20),@lang varchar(20) as
Select * from day4q1 where emp_Location=@add and Programming_Language=@lang

exec emp_Bangalore 'Bangalore', 'C#'


------------------------------------------------------------------------------------------------------------

create table day4q2(
Student_id int primary key,
Maths varchar(50), 
Economics int, 
Commerce int,
English int, 
Computer_Science int
);

select * from day4q2



insert into day4q2 values(1,50,60,70,80,90);
insert into day4q2 values(2,55,67,73,89,78);
insert into day4q2 values(3,78,88,73,84,95);
insert into day4q2 values(4,75,58,43,64,65);
insert into day4q2 values(5,75,68,53,24,85);
insert into day4q2 values(6,81,78,83,54,85);
insert into day4q2 values(7,61,68,84,84,75);
insert into day4q2 values(8,51,78,63,51,65);

create procedure total_marks as
select Student_id,(Maths+Economics+Commerce+English+Computer_Science) as total from day4q2 order by total desc
exec total_marks

-----------------------------------------------------------------------------------------------------------------------
CREATE TABLE day4q3(
s_id INT PRIMARY KEY,
s_name varchar(20),
s_age INT,
s_sex varchar(10),
course varchar(20),
years_of_study INT
)


insert into day4q3 values(101,'mukesh',21,'M','ECE',4)
insert into day4q3 values(102,'ankit',24,'M','EEE',2)
insert into day4q3 values(103,'manish',23,'M','ECE',1)
insert into day4q3 values(104,'anand',22,'M','CS',3)
insert into day4q3 values(105,'shilpa',21,'F','ME',2)
insert into day4q3 values(106,'sanjana',22,'F','CE',3)
insert into day4q3 values(107,'nisha',24,'F','ECE',4)
insert into day4q3 values(108,'poojitha',25,'F','CS',1)

select* from day4q3

create PROCEDURE Batch @year INT AS

 
SELECT * from day4q3 where years_of_study=@year


EXEC Batch 1


------------------------------------------------------------------------------------------------------

--Q4
CREATE function simple_Interest(@P BIGINT,@T INT)
RETURNS BIGINT AS
BEGIN
   DECLARE @R AS INT
   SET  @R=5
  DECLARE @SIMPLEINTEREST AS BIGINT
  SELECT  @SIMPLEINTEREST = (@P*@R*@T)/100
  RETURN @SIMPLEINTEREST
END

SELECT dbo.simple_Interest(10000,2)


-----------------------------------------------------------------------------------------------

CREATE FUNCTION timezone (@city_name varchar(20))
RETURNS varchar(20) AS
BEGIN
DECLARE @res AS varchar(20)
   IF @city_name='Dubai'
    set @res = '5 am'
   ELSE IF @city_name='UK'
     set @res = '6 am'
   ELSE 
   set @res = '7 am'

   RETURN @res
END

select dbo.timezone('Mumbai')