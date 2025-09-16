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

/* TO DROP A CONSTRAIN*/
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



SELECT * FROM student2

SELECT * FROM student3


