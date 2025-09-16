use training
use shravandb


use shravandb

/*Syntax dor creating a table 
create table table_name ( column_1 datatype , 
                          cloumn _2 data type)
*/

create table salgrade (grade int, 
                         highsal bigint, 
                         lowsal bigint)

create table employee ( empno int, 
                        ename varchar(20),
                        job varchar(15),
                        mgr int,
                        hiredate date,
                        sal bigint,
                        comm bigint, 
                        deptno int)
create table department ( deptno int, 
                          dname varchar(20),
                          loc varchar(20)



/* to find the structure of the table*/
sp_help department

/* Alter commands*/

/* to add a new cloumn*/
alter table department add mobile bigint

alter table department add hiredate
/*to change the data type of the cloumn*/
alter table department alter column hiredate date
/* to drop (delete an entire cloumn) */
alter table department drop column mobile
alter table department add mobile bigint

/* to delete a specific row or for multiple rows deletion with same condition*/
delete from department where hiredate is null

/* to drop a table 
 drop table table_name*/

/*insert values*/

insert into department values (10 , 'Shravan' , 'NYC' , '2027-08-17' , 9989106178)
insert into department values (10, 'Sai' , 'DEL' , '2027-08-27', 7569935612)

/* to give a null we should give null manually without any quotation marks*/

insert into department values (10, 'Vamsi' , 'DEL' , null , 7569935612)

/* TO insert all values at a time*/
INSERT INTO Employee (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
(7839, 'KING',   'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
(7698, 'BLAKE',  'MANAGER',   7839, '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK',  'MANAGER',   7839, '1981-06-09', 2450, NULL, 10),
(7566, 'JONES',  'MANAGER',   7839, '1981-04-02', 2975, NULL, 20),
(7788, 'SCOTT',  'ANALYST',   7566, '1987-07-13', 3000, NULL, 20),
(7902, 'FORD',   'ANALYST',   7566, '1981-12-03', 3000, NULL, 20),
(7369, 'SMITH',  'CLERK',     7902, '1980-12-17',  800, NULL, 20),
(7499, 'ALLEN',  'SALESMAN',  7698, '1981-02-20', 1600,  300, 30),
(7521, 'WARD',   'SALESMAN',  7698, '1981-02-22', 1250,  500, 30),
(7654, 'MARTIN', 'SALESMAN',  7698, '1981-09-28', 1250, 1400, 30),
(7844, 'TURNER', 'SALESMAN',  7698, '1981-09-08', 1500,    0, 30),
(7876, 'ADAMS',  'CLERK',     7788, '1987-07-13', 1100, NULL, 20),
(7900, 'JAMES',  'CLERK',     7698, '1981-12-03',  950, NULL, 30),
(7934, 'MILLER', 'CLERK',     7782, '1982-01-23', 1300, NULL, 10);

insert into salgrade (grade, lowsal, highsal) values
(1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999)

delete from salgrade where grade = 9

/* When we use this type of insert there is no need of cloumn order*/
insert into salgrade (lowsal, grade, highsal) values
(6000 , 6 , 8000)

/* to insert only one value there is no need of giving null 
but when giving all inputs we need to give null for which wedon't give*/

insert into salgrade (grade) values (9)

/* To upadate any null value or change the exising value*/

update department set loc = 'VTZ' where  dname = 'vamsi'

update department set hiredate = '2027-09-16' where  dname = 'vamsi'

update department set hiredate = '2027-08-19' where  dname = 'sai'

select dname from department where hiredate is null 


select * from department

select * from salgrade

select * from Employee

INSERT INTO Employee (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
(122334, '',   '', NULL, '', 5000, NULL, 10)                           

