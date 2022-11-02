use day4



CREATE TABLE Events_Delatils( 
event_id INT PRIMARY KEY,
Events_name varchar(30),
event_date date,
organizer  varchar(20),
loc varchar(50),
total_cost BIGINT
)

insert into Events_Delatils values(1001,'aniversary','11-04-2022','mukesh','hyderabad',20000)
insert into Events_Delatils values(1002,'conference','10-04-2022','manish','kota',30000)
insert into Events_Delatils values(1003,'seminar','05-04-2022','ankit','delhi',40000)
insert into Events_Delatils values(1004,'party','06-04-2022','anand','mumbai',50000)

insert into Events_Delatils values(1005,'aniversary','11-04-2022','raju','patna',30000)
insert into Events_Delatils values(1006,'conference','10-04-2022','soaib','UP',20000)
insert into Events_Delatils values(1007,'seminar','05-04-2022','nisha','UK',50000)
insert into Events_Delatils values(1008,'party','06-04-2022','sanjana','kerela',40000)
insert into Events_Delatils values(1009,'party','07-04-2022','mukesh','kerela',50000)
insert into Events_Delatils values(1010,'party','08-04-2022','neelam','kerela',60000)

select * from Events_Delatils

------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE disp_events @e_daten date AS
BEGIN
SELECT * from Events_Delatils where event_date = @e_daten
END
EXEC disp_events '11-04-2022'

---------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION disp_Event()
RETURNS TABLE AS

RETURN 
SELECT count(Events_name) AS numofevents  from Events_Delatils where total_cost = (select MAX(total_cost) from Events_Delatils )


select * from disp_Event()

-----------------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE display_events @location varchar(50) AS
BEGIN
SELECT * from Events_Delatils where loc = @location
END
EXEC display_events 'hyderabad'