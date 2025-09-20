USE training

create table customer ( Customer_id int , Firstname varchar (10) , Lastname varchar (15) , City varchar(50) , Country varchar(50) , Phone varchar(20))

create table Orders ( Order_id int , Orderdate date , Ordernumber varchar (10) , Customer_id int , TotalAmount int)


create table Products (sno int identity (1,1) , Product_id int , product_name char(10) , UnitPrice int)

create table orderitems (id int , order_id char(10) , Product_id char(10) , UnitPrice int , Quantity int)

/* if we want to create a primary key for a column after creation first we should add not null and then add pk constraint*/
exec  sp_help customer

alter table customer alter column customer_id int not null  

alter table customer add constraint customer_id_primarykey primary key (customer_id)

alter table customer alter column firstname varchar(30) not null


alter table customer alter column lastname varchar(30) not null

alter table customer alter column city varchar(20) 

alter table customer alter column country varchar(20) 

alter table customer add constraint city_check  CHECK ( country = 'India'   AND (city = 'kakinada' OR city = 'Rajahmundry'))

alter table customer alter column phone bigint

alter table customer add Email varchar(50)

alter table orders alter column order_id int not null  

alter table orders add constraint order_id_primarykey primary key (order_id)

alter table orders alter column orderdate datetime

alter table orders add constraint orderdate_default default (getdate ()) for orderdate

ALTER TABLE orders ADD CONSTRAINT customer_id_fk  FOREIGN KEY (customer_id) REFERENCES customer (customer_id) 

ALTER TABLE orders alter column customer_id int not null

ALTER TABLE orders alter column totalamount float

alter table products alter column product_id int not null  

alter table products add constraint product_id_primarykey primary key (product_id)

alter table products alter column product_name varchar(30)

ALTER TABLE products alter column unitprice float


ALTER TABLE products alter column  color varchar(10)


alter table products add despcription varchar(50)

alter table products add constraint color_check check ( color = 'red' or color  = 'green' or color = 'blue')

alter table products alter column color varchar(10)  not null

exec sp_help products


alter table orderitems alter column id int not null

alter table orderitems alter column order_id int 

alter table orderitems alter column product_id int 

alter table orderitems add constraint id_pk primary key (id)

ALTER TABLE orderitems ADD CONSTRAINT order_id_fk  FOREIGN KEY (order_id) REFERENCES orders (order_id) 

alter table orderitems alter column order_id int not null

ALTER TABLE orderitems ADD CONSTRAINT product_id_fk  FOREIGN KEY (product_id) REFERENCES products (product_id)

alter table orderitems alter column product_id int not null

ALTER TABLE orderitems alter column unitprice float not null

alter table orderitems add constraint quantity_default default (0 ) for quantity

insert into customer values ( 1 ,  'Sure' , 'Shraavan' , 'rajahmundry' , 'india' , 9989106171 , 'sureshravan78@gmail.com')

insert into customer values ( 2 ,  'Vegisetti' , 'sai' , 'rajahmundry' , 'india' , 9989106175 , 'saivegisetti44@gmail.com')

insert into customer values ( 3 ,  'Surisetti' , 'anil' , 'rajahmundry' , 'india' , 9989106179 , 'anilsai@gmail.com')

insert into customer values ( 4 ,  'Yadlapalli' , 'vamshi' , 'rajahmundry' , 'india' , 9989106177 , 'vamshi@gmail.com')

select * from customer


insert into Orders values ( 1  , '2025-08-06' , 










