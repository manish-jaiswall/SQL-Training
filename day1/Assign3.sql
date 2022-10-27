use Student_Table


CREATE TABLE STUDENTS (s_id int ,s_name varchar(20),course_name varchar(20),month_name varchar(20))

insert into STUDENTS values(1001,'radha','physics',3)
insert into STUDENTS values(1001,'sayam','math',8)
insert into STUDENTS values(1001,'ram','physics',11)
insert into STUDENTS values(1001,'krishna','physics',10)
insert into STUDENTS values(1001,'rajesh','chemistry',7)
insert into STUDENTS values(1001,'prem','physics',7)
insert into STUDENTS values(1001,'raksha','physics',4)

ALTER TABLE STUDENTS ALTER COLUMN month_name INT 

select* from STUDENTS


SELECT s_name,month_name from STUDENTS WHERE month_name>7