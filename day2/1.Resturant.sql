create database Resturant

create table CUSTOMER(

Customer_id int not null primary key,
Customer_Name varchar(255) not null,
Customer_Address varchar(255) not null,
Customer_Tel bigint not null,
Customer_Email varchar(255)

 --CONSTRAINT Customer_id  FOREIGN KEY (Customer_id) References ORDERS (Customer_id) 



);

--drop table CUSTOMER

insert into CUSTOMER values(1,'Manish Jaiswal','Hyderabad',9834836458,'manishjaiswal@gmail.com')
insert into CUSTOMER values(2,'Prakriti Singh','Mumbai',9864536271,'prakritisingh@gmail.com')
insert into CUSTOMER values(3,'Shubham Sah','Patna',9836666458,'shubhamsah@gmail.com')
insert into CUSTOMER values(4,'Sagar Panthi','Pune',9321836458,'sagrpanthi@gmail.com')
insert into CUSTOMER values(5,'Mukesh Lodha','Jaipur',932100000,'MK00@gmail.com')

create table ORDERS(

Customer_id int not null,
Order_id int not null primary key ,
Date_ date

CONSTRAINT Customer_id  FOREIGN KEY (Customer_id) References CUSTOMER(Customer_id) 



);
insert into ORDERS values(1,1,'10/12/2022')

insert into ORDERS values(2,2,'10/13/2022')
insert into ORDERS values(3,3,'10/14/2022')
insert into ORDERS values(4,4,'10/15/2022')
insert into ORDERS values(5,0,'12/15/2022')
insert into ORDERS values(1,6,'12/15/2022')

--drop table ORDERS


create table ORDER_ITEM(

Order_item_id int not null  primary key,
Order_id int not null,
Item_id int not null,
Product_quantity int not null

CONSTRAINT Order_id  FOREIGN KEY (Order_id) References ORDERS (Order_id) ,
CONSTRAINT Item_id  FOREIGN KEY (Item_id) References ITEMS (Item_id) 

);

insert into ORDER_ITEM values(1,1,1,2)
insert into ORDER_ITEM values(2,2,3,4)
insert into ORDER_ITEM values(5,3,4,3)
insert into ORDER_ITEM values(6,4,1,2)
insert into ORDER_ITEM values(7,1,2,2)
insert into ORDER_ITEM values(8,1,5,1)
insert into ORDER_ITEM values(9,6,5,2)




--drop table ORDER_ITEM

create table ITEMS(

Item_id int not null primary key ,
Item_name varchar(255)not null,
Price int not null 
 

);

--drop table ITEMS

insert into ITEMS values(1,'Butter Chicken',100)
insert into ITEMS values(2,'Butter Naan',40)
insert into ITEMS values(3,'Butter Paneer',80)
insert into ITEMS values(4,'Omlete',50)
insert into ITEMS values(5,'Briyani',150)

Select * from CUSTOMER 



Select * from ORDER_ITEM

Select * from ITEMS
Select * from ORDERS where Customer_id=1
Select * from ORDER_ITEM where Order_id IN (1,6)

 
Select Customer_Name,Customer.Customer_id,Date_,Order_id from CUSTOMER INNER JOIN ORDERS on CUSTOMER.Customer_id=ORDERS.Customer_id
Select * from CUSTOMER FULL OUTER JOIN ORDERS on CUSTOMER.Customer_id=ORDERS.Customer_id
Select * from CUSTOMER LEFT OUTER JOIN ORDERS on CUSTOMER.Customer_id=ORDERS.Customer_id
Select * from CUSTOMER RIGHT OUTER JOIN ORDERS on CUSTOMER.Customer_id=ORDERS.Customer_id
Select * from CUSTOMER CROSS JOIN ORDERS --on CUSTOMER.Customer_id=ORDERS.Customer_id
