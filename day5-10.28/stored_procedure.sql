use day4

create   procedure ptel @name varchar(20),@tel_num bigint,@city varchar(20) as

create table telepd(tel_id int identity primary key, name varchar(20),tel_num  bigint,city varchar(20))


insert into telepd (name,tel_num,city) values(@name,@tel_num,@city)

exec ptel 
select * from telepd


