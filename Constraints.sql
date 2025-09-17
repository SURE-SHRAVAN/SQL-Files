use shravandb

create table sampletable (
     idno int , 
     sname varchar(20),
     marks int)

insert into sampletable values (1 , 'ramana' , 85)
insert into sampletable values (2 , 'oleti lakshmi' , 59)
insert into sampletable values (3 , 'macha',  350)
insert into sampletable values (4 , 'maha',  3450)

update sampletable set sname = null where sname =  'macha'

update sampletable set idno = 2 where idno  = 4 

select * from sampletable
                           
                         /*            Constraints               */

-- UNIQUE

create table student1 ( 
                 sno int unique, 
                 idno varchar(20) unique, 
                 htnp int unique , 
                 sname varchar(200) , 
                 marks int)
DELETE FROM student1 WHERE SNAME = 'VINAY'

insert into student1 (sno , idno , htnp , sname , marks ) values ( 1 , '236M1A4241', 142563 , 'SHRAVAN' , 97) ,
                                                                 ( 2 , '236M1A4246' ,142564,  'SAI' , 99),
                                                                 ( 3 , '236M1A4242' , 142565 , 'ANIL' , 85),
                                                                 ( 4 , '236M1A4247' , 142566 , 'VAMSHI' , 57),
                                                                 ( 5 , '246M5A4203' , 142567 , 'VINAY' , 89)
                                                            INSERT  INTO STUDENT1   VALUES ( NULL  , '236M1A4252', 142568 , 'Ramu' , 96)
                                                            INSERT  INTO STUDENT1   VALUES ( NULL  , NULL, 142569 , 'Ramu' , 96)    
                                                            INSERT  INTO STUDENT1   VALUES ( NULL  , NULL, 142570 , 'Ramu' , 96)



exec sp_help student1

/* TO DROP A CONSTRAIN only for constraints which works on contraint names*/
ALTER TABLE STUDENT1 DROP CONSTRAINT  UQ__student1__DDDF6447BF7E2307



-- create a constrain with own name
 
 create table student3 ( 
     idno int , 
     htno  varchar(20) ,
     sname varchar(20),
     marks int)

exec sp_help student3

alter table student3 add constraint student_idno_unique unique (idno)


alter table student3 add constraint student_sname_unique unique (sname)

insert into student3 (idno , htno , sname , marks) values ( 1 , 'sfe52' , 'ravi' , 85)

insert into student3 (idno , htno , sname , marks) values ( 2 , 'sfe53' , 'ravii' , 58)

insert into student3 (idno , htno , sname , marks) values ( null , 'fadfcas' , null , 85)

insert into student3 (idno , htno , sname , marks) values ( null , 'fadfca' , null , 55)


/* Not Null */ 

 create table student4 ( 
     idno int , 
     htno  varchar(20) ,
     sname varchar(20) constraint student4_sname_notnull not null ,
     marks int)

     exec sp_help student4

insert into student4 values (1 , 'sdfs', 'pussy' , 74)
insert into student4 values (1 , 'sdfs', 'pussy' , 74)
insert into student4 values (2 , null , 'cock' , 21) 
insert into student4 values (2 , 'sddfs' , null , 21) -- error

-- TO remove not null constraint

alter table student4 alter column sname varchar(20)

/* not null after table creation */

alter table student4 alter column idno int not null

/* Check Constraint */
         

create table student5 ( idno int , sname varchar(20)  , marks int constraint student5_marks_check check( marks >= 0 and marks<=100) )

insert into student5 values (4241 , 'shravan' , 100)

insert into student5 values (4242 , 'sai' , 75)

insert into student5 values (4243 , 'sowjanya' , 0)

insert into student5 values (4244 , 'teja' , 1000)

insert into student5 values (4245 , 'vinay' , -100)


exec sp_help student5

-- removing check is same as null as it shows constraint names

ALTER TABLE STUDENT5 DROP CONSTRAINT  student5_marks_check


create table student6 ( idno int , sname varchar(20)  , marks int  , city varchar(20) constraint student5_marks_city check( city = 'Rjahmundry'  or city = 'Kakinada' ))

insert into student6 values(12 , 'sai' , 20 , null)

-- to add after creation of table
/* same as for unique*/

select * from student6
select * from student5

SELECT * FROM student2

SELECT * FROM student3

select * from student4


create table student7 ( idno int , sname varchar(20) , loc varchar(20))

alter table student7 add constraint  student7_idno_check check (idno >=1 and idno <= 100) , constraint student7_idno_unique unique (idno)  

exec sp_help student7

alter table student7 add marks int 

alter table student7 add constraint student7_marks_default default = 0 (marks)

alter table student7 drop column marks 

-- insert into student7 values ()

/* Primary Key 
 1) this tells us about linking two tables
 2) this helps to maintain uique value and does not allow null
*/

create table student_primary ( IDNO INT constraint student_idno_primarykey primary key , SNAME VARCHAR(20) , marks int)

insert into student_primary (idno , SNAME , marks ) values ( 1 , 'shravan' , 85) , 
                                                           ( 2 , 'sai' , 43) , 
                                                           (3 , 'anil' , 33) , 
                                                           ( 4 , 'vamshi' , 74)
insert into student_primary (idno , SNAME , marks ) values  (5 , 'deepu' , 76)

select * from student_primary

create table student_library (bookname varchar(20) , bookcost int, dateofissue date , idno int constraint library_idno_fk references student_primary (idno))

insert into student_library (bookname , bookcost , dateofissue , idno) values ( 'pride and prejudice' , 330 , '2017-05-19' , 1),
                                                                              ( 'rich dad poor dad' , 3270 , '2017-05-19' , 2),
                                                                              ( 'power of mind' , 780 , '2017-05-19' , 3),
                                                                              ( 'mary jane' , 380 , '2017-05-19' , 4)

insert into student_library values ('how to get rich' , 410 ,'2017-05-19' , 5 )

select * from student_library          


select bookname from student_primary where idno = 1


/* identity*/

create table auto_table ( idno int identity (1 , 1 ) ,sname  varchar (20) , marks int ) 

alter table auto_table drop consraint identity idno 

insert into auto_table (sname , marks) values ('shravan' , 45)
select  * from auto_table


