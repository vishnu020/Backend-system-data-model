drop table Customers ;
   CREATE TABLE CUSTOMERS (
   id int NOT NULL IDENTITY(1, 1),
   First_Name varchar(255),
   Last_Name varchar(255),
   Age varchar(20),
   Gender varchar(255) ,
   Email_Address varchar(255),
   Mobile_Phone_Number varchar(25),
 
   
   Primary key(id),
   )

   INSERT INTO CUSTOMERS (First_Name,Last_Name,Age,Gender,Email_Address,Mobile_Phone_Number)
     values('Vishnu','Singh','23','male','vishnu@gmail.com','9530396291'),
	 ('Vashu','Singh','21','male','vashu@gmail.com','1234567890'),
	 ('yogesh','Singh','23','male','yogesh@gmail.com','5673829201')


	 select *
	 from CUSTOMERS
    
	drop table ORDERS 
	CREATE TABLE ORDERS (
   ordersid int NOT NULL IDENTITY(1,1),
   Order_Number varchar(255),
   Order_Date varchar(255),
   Customers int,
   Order_status varchar(255) ,
   Currancy varchar(255),
   Total_Amount varchar(25),
   Addressid int ,
   PRIMARY KEY(ORDERSID),
   FOREIGN KEY(Customers) references CUSTOMERS(id),
   foreign key(addressid) references Address(addressid)
  )

  INSERT INTO ORDERS( Order_Number,Order_Date, Customers,Order_status,Currancy,Total_Amount,Addressid)
  Values('123','1-01-2022','1','pending','RS','1000','3'),
  ('124','2-01-2022','3','deliver','RS','2000','1'),
  ('125','3-01-2022','2','confirmed','RS','3000','2')

  select *
  from orders 

  drop  table address
  CREATE TABLE ADDRESS (
   adDressid int NOT NULL IDENTITY(1,1),
   customerid int ,
   address varchar(225),
   address_type varchar(225),
   defalut_address varchar(225),
   primary key(addressid),
   foreign key (customerid) references customers(id)

   )

   insert into ADDRESS(customerid,address,address_type,defalut_address)
   values('1','cc-88 indira nagar','home','yes'),
   ('2','c-90 delhi','office','no'),
   ('3','indira nagr','hostel','yes')

   select *
   from address


   select o.ordersid,o.order_number,o.order_status,o.total_amount,
   c.first_name,c.last_name,c.email_address,c.mobile_phone_number,
   a.address
   from orders o inner join customers c on c.id=o.customers 
   inner join address a on  a.adDressid =o.Addressid 


   
  select *
  from orders

  select *
   from address

   select *
	 from CUSTOMERS