create database Telephone;

create Table  telephone_directory(

ID int NOT NULL primary key,
Full_Namr varchar(255),
Tel_Number int,
Address_ varchar(255),
Profession varchar(255)



);

alter table telephone_directory alter column Tel_number bigint
select * from telephone_directory

insert into telephone_directory values(1,'Hari Sah',9893849393,'Mumbai','Carpenter')
insert into telephone_directory values(2,'Om Patidar',9895149393,'Kolkata','Student')
insert into telephone_directory values(3,'Shubham Chapagain',9998945362,'Delhi','Entepreneur')
insert into telephone_directory values(4,'Himanshu Patel',9645342093,'Patna','Student')
insert into telephone_directory values(5,'Rahul Kumar',9381230456,'Bangalore','Student')
insert into telephone_directory values(6,'Gaurav Karki',9037654393,'Chennai','Phamracist')
insert into telephone_directory values(7,'Sahil Rauniyar',9080065393,'Hyderabad','Software Engineer')
insert into telephone_directory values(8,'Pulkit Gupta',9893854323,'Bhopal','Receptionist')
insert into telephone_directory values(9,'Pawan Singh',9887645323,'Lucknow','Student')
insert into telephone_directory values(10,'Anjali Kumari',9878909393,'Vizag','Teacher')
insert into telephone_directory values(11,'Neha Gupta',9893811393,'Banaras','Preist')
insert into telephone_directory values(12,'Anamika Sharma',9800849393,'Kolkata','CA')
insert into telephone_directory values(13,'Bhuwan Bam',9893846693,'Mumbai','Youtuber')
insert into telephone_directory values(14,'Anand Kumar',9895549393,'Raxaul','Student')
insert into telephone_directory values(15,'Niraj Lodha',9893845393,'Bangalore','UX Designer')
insert into telephone_directory values(16,'Bishal Patnagar',9893789393,'Hyderabad','Entepreneur')
insert into telephone_directory values(17,'Ankit Kumar',9893848893,'Ranchi','Student')
insert into telephone_directory values(18,'Ram Naraa',9893779393,'Mumbai','Trader')
insert into telephone_directory values(19,'Sita Patel',9893849999,'Bangalore','Analyst')
insert into telephone_directory values(20,'Nisha Kumar',9888849393,'Bangalore','Student')


select count(*) from telephone_directory where Profession='student'
