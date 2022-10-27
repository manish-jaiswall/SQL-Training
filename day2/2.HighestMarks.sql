create database Student_Table;

create table student(s_id int NOT NULL, s_name varchar(20), course varchar(20),marks int, UNIQUE(s_id))

insert into student values (1001,'Reeta','Maths',40)
insert into student values (1002,'Ramu','Chem',50)
insert into student values (1003,'Reena','Phys',60)
insert into student values (1004,'Raju','Maths',60)
insert into student values (1005,'Ramesh','Maths',80)
insert into student values (1006,'Ravi','chem',89)
insert into student values (1007,'Neelam','Phys',85)
insert into student values (1008,'Raksha','Maths',95)

SELECT * from student

SELECT * FROM student  WHERE marks IN (SELECT MAX(marks) FROM student GROUP BY course)  ORDER BY course

  