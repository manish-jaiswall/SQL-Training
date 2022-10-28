create database stored_procedure


create table studenttb(s_id int NOT NULL, s_name varchar(20), course varchar(20),marks int, UNIQUE(s_id))

insert into studenttb values (1001,'Reeta','Maths',40)
insert into studenttb values (1002,'Ramu','Chem',50)
insert into studenttb values (1003,'Reena','Phys',60)
insert into studenttb values (1004,'Raju','Maths',60)
insert into studenttb values (1005,'Ramesh','Maths',80)
insert into studenttb values (1006,'Ravi','chem',89)
insert into studenttb values (1007,'Neelam','Phys',85)
insert into studenttb values (1008,'Raksha','Maths',95)



create procedure sp_1 as
Select * from studenttb 



alter procedure sp_1 as
Select * from studenttb where course='Maths'


exec sp_1



--function definition one condition
alter procedure sp_1 @course varchar(20) as
Select * from studenttb where course=@course

--function definition two  condition
alter procedure sp_1 @course varchar(20),@marks int as
Select * from studenttb where course=@course and marks>=@marks

exec sp_1 'Phys', 70

alter procedure sp_1 @course varchar(20) as
declare  @cutoff_mark as int --declaring a variable cutoffmark as int
set @cutoff_mark=70
Select * from studenttb where course=@course and marks>=@cutoff_mark
 exec sp_1 'Phys' 

 alter procedure sp_1 @course varchar(20) as
declare  @cutoff_mark as int 
set @cutoff_mark=(select max(marks)from studenttb where course=@course)
set @cutoff_mark =@cutoff_mark-20
Select * from studenttb where course=@course and marks >@cutoff_mark
 exec sp_1 'Phys'



