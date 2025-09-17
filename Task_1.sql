create database SMS

USE SMS

create table student (idno varchar(20) , Sname  int , dob  int , Email float)

sp_help student /* to print the structure of the table*/

/*changing the data types*/
alter table student alter column idno int

alter table student alter column sname varchar(25)

alter table student alter column dob char

alter table student alter column dob date

alter table student alter column Email varchar(30)

insert into student (idno , sname , dob , Email) values (1 , 'Rama' , '2000-01-01' , 'rama@gmail.com'),   
                                                        (2 ,'Siva', '1990-01-15' , 'siva@gmail.com'  ),
                                                        (3 , 'Sita' , '2005-01-01' ,'sita@gmail.com'),
                                                        (4 , 'Kumar' , null , 'kumar@gmail.com'),
                                                        (5 , 'Raja' , null , null),
                                                        (6 , 'Radha', '2020-01-01', null);
                                                     


update student set dob = '2000-01-01' where Sname = 'Kumar'

update student set Email= 'radha@gmail.com' where Sname = 'radha'

update student set dob = '1995-01-20'  , email = 'raja@yahoo.com' where sname = 'raja'

insert into student (idno) values ( 7 )

insert into student (Email) values ('sankar@sankar.com')

insert into student (idno , Sname) values ( 9 , 'Ranga')

insert into student (idno , dob) values ( 10 , '2010-02-20')

update student set dob = '1990-01-01'  , email = 'Lakshmi@gmail.com' , Sname = 'Laksmi'  where idno = 7 

update student set idno = 8 where Email = 'sankar@sankar.com'


update student set dob = '2000-05-05'   where dob is null

update student set Email = 'abc@abc.com'   where Email is null

alter table student add mobile bigint

alter table student add city varchar(8)

alter table student alter column  city varchar(20)


UPDATE student
SET mobile = CASE
    WHEN idno = 1 THEN 1111111111
    WHEN idno = 2 THEN 2222222222
    WHEN idno = 3 THEN 3333333333
    WHEN idno = 4 THEN 4444444444
    when idno = 5 then 1234567890
    when idno = 6 then 1111111111
    when idno = 7 then 2222222222
    when idno = 8 then 3333333333
    when idno = 10 then 4444444444
END
WHERE idno IN (1,2,3,4,5,6,7,8,10);

UPDATE student
SET city = CASE
    WHEN idno = 1 THEN 'Rajahmundry'
    WHEN idno = 2 THEN 'Rajahmundry'
    WHEN idno = 3 THEN 'Kakinada'
    WHEN idno = 4 THEN 'Hyderabad'
    when idno = 5 then 'Kakinada'
    when idno = 6 then 'Hyderabad'
    when idno = 7 then 'Vizag'
    when idno = 8 then 'Hyderabad'
    when idno = 9 then 'Vizag'
    when idno = 10 then 'Kakinada'
END
WHERE idno IN (1,2,3,4,5,6,7,8,9,10);

delete from student where mobile is null or Email = 'abc@abc.com'

delete from student where dob = '2000-05-05'

update student set Sname = 'Praveen' where dob = '2005-05-05'

update student set city = 'Amalapuram' where dob = '2000-01-01'

delete  from student where city = 'Rajahmundry'

alter table student drop column city

delete  from student where dob = '2000-05-05'

alter table student alter column dob char

alter table student alter column dob date

truncate table student

drop table student

select * from student

