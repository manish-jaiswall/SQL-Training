create database cricket_player

create table cricketPlayer_info(

PlayerID int,
FullName varchar(255),
Country varchar(255),
Age int,

constraint Composite_Key primary key(PlayerID,FullName)


);

select * from cricketPlayer_info

insert into cricketPlayer_info values(10,'Mahendra Singh Dhoni','India',45)
insert into cricketPlayer_info values(20,'Shewag','India',40)
insert into cricketPlayer_info values(09,'Shane Watson','Australia',44)
insert into cricketPlayer_info values(16,'Ricky Ponting','Australia',35)
insert into cricketPlayer_info values(30,'Joss Bulter','United Kingdom',49)
insert into cricketPlayer_info values(40,'Jason Roy','United Kingdom',48)

