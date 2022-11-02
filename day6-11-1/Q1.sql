use day4

use mukesh

CREATE TABLE sales_detail(
s_id INT PRIMARY KEY,
s_name varchar(20),
amount BIGINT,
city varchar(20)
)


insert into sales_detail values (1001,'mukesh',2000,'Delhi')
insert into sales_detail values (1002,'manish',4000,'Delhi')
insert into sales_detail values (1003,'anand',3000,'Delhi')
insert into sales_detail values (1004,'ankit',5000,'Delhi')
insert into sales_detail values (1005,'sanjana',6000,'Delhi')

insert into sales_detail values (1006,'nisha',1000,'Bihar')
insert into sales_detail values (1007,'poojitha',2000,'Bihar')
insert into sales_detail values (1008,'shilpa',3000,'Bihar')
insert into sales_detail values (1009,'kishor',4000,'Bihar')

insert into sales_detail values (1010,'raju',10000,'UP')
insert into sales_detail values (1011,'ram',20000,'UP')
insert into sales_detail values (1012,'rakesh',30000,'UP')
insert into sales_detail values (1013,'rani',40000,'UP')

insert into sales_detail values (1014,'ramu',200000,'UK')
insert into sales_detail values (1015,'radha',300000,'UK')
insert into sales_detail values (1016,'parnav',400000,'UK')
insert into sales_detail values (1017,'ramesh',50000,'UK')

SELECT * FROM sales_detail

CREATE OR ALTER FUNCTION sales_values(@val varchar(20))
RETURNS TABLE AS
RETURN
select city ,amount   from sales_detail group by city,amount having city = @val



CREATE OR ALTER FUNCTION maxVal(@city_name varchar(20))
RETURNS @ans TABLE (amount BIGINT) AS
BEGIN

DECLARE @res TABLE (city varchar(20),Amount BIGINT)
insert into @res SELECT * FROM sales_values(@city_name)

insert into @ans SELECT AVG(Amount) from @res

 return 

END

SELECT* from maxVal('Delhi')
