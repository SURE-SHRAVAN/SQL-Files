create database hackerrank

use hackerrank



create table student_information ( roll_number int primary key ,  name varchar(30) , advisor int)

create table faculty_table (employee_id int primary key , gender varchar(8) , salary bigint)

insert into student_information values (1 , 'Robert' , 2), (2 , 'claire' , 1) , ( 3 , 'kimmy' , 2)

insert into faculty_table values ( 1 , 'm' , 21000) , (2 , 'f' , 10000) 

update faculty_table set salary = 18000 where gender = 'f'

select s.roll_number , s.name from  faculty_table f ,  student_information s  where s.advisor = f.employee_id and  ((f.gender = 'm' and f.salary >15000) or (f.gender = 'f' and f.salary > 20000))
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table emp_table ( emp_id int , name varchar(20)  , division varchar(10))

create table last_quater_bonus (emp_id int , bonus bigint)


insert into emp_table values(1, 'julia', 'HR'),
(2, 'samantha', 'Tech'),
(3, 'richard', 'HR')

insert into  last_quater_bonus values(1, 2000),
                                     (2, 5500),
                                     (3, 6240)


select e.emp_id , e.name from emp_table e ,  last_quater_bonus lbs  where   e.emp_id = lbs.emp_id and e.division = 'hr'and   lbs.bonus > 5000

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table price_today (stock_code varchar (10) , price int)

create table price_tomorrow (stock_code varchar (10) , price int)

insert into  price_today values ('titan' , 560) , ('mrf' , 950) , ('googl' , 200)

insert into  price_tomorrow values ('titan' , 750) , ('mrf' , 800) , ('googl' , 210)


select distinct ptd.stock_code from price_today ptd  ,  price_tomorrow  pto where ptd.price < pto.price order by ptd.stock_code asc
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table student_information1 ( roll_number int , name varchar(20) )

create table examination_marks (roll_number int , subject_one int  , subject_two int , subject_three int)

insert into student_information1 values ( 1 , 'Sheila' ) ,  ( 2, 'rachel')  , ( 3 , 'christopher')

insert into examination_marks values (1 , 32, 48, 64) , (2,24,21,25) , (3,55,12,10)

select s.roll_number , s.name from student_information1 s , examination_marks m where s.roll_number = m.roll_number  and  (m.subject_one+m.subject_two+m.subject_three) < 100
---------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE CUSTOMERS(CUSTOMER_ID INT, NAME VARCHAR(20), PHONE_NUMBER INT, COUNTRY VARCHAR(20))

INSERT INTO CUSTOMERS VALUES(1, 'RAGHAV', 95134134, 'INDIA')
INSERT INTO CUSTOMERS VALUES(2, 'JAKE', 52341351, 'USA')
INSERT INTO CUSTOMERS VALUES(3, 'ALICE', 61341351, 'INDIA')

CREATE TABLE COUNTRY_CODES(COUNTRY VARCHAR(20), COUNTRY_CODE INT)

INSERT INTO COUNTRY_CODES VALUES('USA', 1)
INSERT INTO COUNTRY_CODES VALUES('INDIA', 91)

SELECT * FROM CUSTOMERS
SELECT * FROM COUNTRY_CODES
-------------------------------------------------------------------------------------------------------------------------------------------------------------------