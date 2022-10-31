use day4


CREATE TABLE Pass_Information(
pass_no BIGINT PRIMARY KEY,
can_name varchar(20) NOT NULL,
Pass_Expiry_date  date NOT NULL,
Years_of_validity INT,
App_through_channel varchar(20)
)

CREATE OR ALTER PROCEDURE Passport @p_no BIGINT,@c_name varchar(50),
@p_exp_date date,@years_val INT,@a_thr_chan varchar(50) AS

insert into Pass_Information (pass_no,can_name,Pass_Expiry_date,Years_of_validity,App_through_channel)
values(@p_no,@c_name,@p_exp_date,@years_val,@a_thr_chan)

select* from Pass_Information
delete from Pass_Information