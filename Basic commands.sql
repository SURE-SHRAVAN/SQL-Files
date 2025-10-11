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
                          loc varchar(20) )



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


SELECT deptno
FROM Department
WHERE deptno NOT IN (SELECT DISTINCT deptno FROM Employee);

-- TO select all fields of a table 

select * from employee

select empno , deptno , ename from Employee

select empno , ename from employee

select  ename , dname from department
 

select empno from employee

select job, deptno from employee

select empno  , sal , comm , sal + comm from employee 
/* Here the total sal with no commision will be null as some of the emp will not have comm so to overcome this 
we need to use 0 in place of null who doesn't have any comm to get total sal correctly
we  use isnull(col , value) to repalce the null value*/

select empno  , sal , comm , sal + isnull(comm ,0) from employee 

/* for printing the colmun vale total sal we dont have any name of that column so we use "as" or decleare the name in [] */

  
select empno  , sal , comm , sal + isnull(comm ,0)  as totalsal from employee 

select * from employee where deptno = 10

select * from employee where sal > 2000

select * from employee where job = 'manager'

select ename from employee where deptno != 10
 -- not equal to

 select ename from employee where deptno <> 10

 ----------------------------------Logical Operators---------------------------------------------------------








  ----------------------------------Special Operators---------------------------------------------------------

-- while comparing a query with null we should use is & is not 

select * from employee where comm is null

select * from employee where comm is not null

select * from employee where empno in (7839 , 7788 , 7499 , 7844) /* we can also use or operator between every comaprison*/

select * from employee where job in ('analyst' , 'salesman' , 'manager')

select * from employee where sal between  2000   and 4000

select *  from employee where hiredate between '1987-01-01' and '1987-12-31'

select * from employee where ename  like 'a__%' 

insert into employee values (1001 , 'shr%van' , 'analyst' , 1002 , '1981-04-14' , 5000 , null , 50)

select * from employee

select ename from employee where ename  like '_%_'

/* Functions: set of sql statements which takes input and gives output
Types of functions: 
 1)Pre deifined 
 2)User defined

1)Pre defined functions are built-in functions which can be used anywhere

types of pre defined functions
   scalar valued functions
   aggregate functions or group functions
      these functions return one result for one group 
      ex: sum () only for numeric data , avg () , max () , min () , count ()*/

select sum(sal) as [total sal] from employee

select avg(sal) as [average sal] from employee 

select sum(sal)/15 [average sal] from employee

select max(sal) [maximum sal] from employee

select max(ename) [maximum sal] from employee /*this will give by alphabet oreder as the alphabet vlaue increasesfrom first last so the max value of the letter will return*/

-- for max(date) recent date will be given

select min(ename) [maximum sal] from employee

select count(ename) as [no. of employee] from employee  where ename like 'a%'

select avg(sal) [avg], min (sal) [min] from employee


select  count(*) [no. of employee] from employee where deptno = 10

select  count(*) [no. of employee] from employee where deptno = 20

select  count(*) [no. of employee] from employee where deptno = 30

select deptno , count(*) [no. of employee] from employee where deptno in  (10 ,20 ,30) group by deptno

select * from employee where ename like '%[%]%'

select deptno, max(sal) [max sal] from employee group by deptno 

select  deptno ,  max(sal) [hig sal] from employee where deptno = 10 group by deptno

select job , deptno , count(job) from employee where deptno in(10, 20 , 30)  group by job , deptno 
select deptno , count(*) from employee group by deptno  having count(*) >= 5


-- where clasue cannot have aggregate or group function it will give aggregate error 

select deptno , max(sal) from employee group by deptno having max(sal) >= 3000

select deptno , max(sal) from employee group by deptno 

select deptno , sum(sal) [total sal] from employee group by deptno having sum(sal) >= 9000

select deptno , count(sal) [total sal] from employee group by deptno having sum(sal) >= 9000

-- for order by ascending we should use asc and for descending we should use descending

select ename  from employee order by ename  desc

select ename from employee order by sal asc

select * from employee

select top 5 ename from employee 
order by sal asc 

select abs(-100) from employee
select sqrt(sal) from employee

select POWER(sal , 2) from employee

select round (1852.369845854854754, -4) 


select ascii('a')

select char(52)

select ename , len (ename) from employee where len(ename) != 5

select left ('Aggipetti Machha' , 1)

select right ('Aggipetti Machha' , 15)

select substring ('hinokami kagura' , 2 , 100)

select round (6254.4115252255152, -4)

/* Date functions 
  getdate()  --Returns the ccurrent system date and time
  sysdatetime() --Returns the current system date and time
  Datepart() --Return the specified part of a date
  Datename() -- Returns the specified part of a date
  Year() --returns the year number from a given date
  Month() --returns the month number from a given date
  Day() --Returns the day number froma agiven date
  datediff() -- returns the difference between 2 dates*/

-- gives present date and time of the database server
select getdate()

--gives systemdatetime

select SYSDATETIME() as [sys_date]

select GETUTCDATE()

select DATEPART(year ,  '2020-01-20')

select DATEPART(month , GETDATE())

--there will be no day name it will give date but name will be day

select datepart(day  ,  getdate())

select datepart(hour , getdate())

select datepart(minute , getdate())


select datepart(SECOND, getdate())

select datepart(WEEKDAY ,getdate())

select datename(DAYOFYEAR , getdate())

select DATENAME(month , getdate())

select DATENAME(weekday , getdate())

select * from employee where year(hiredate) = 1981


select * from employee where year(hiredate)  = 1981 and month(hiredate) = 12
 
select * from employee where hiredate between '1981-12-01' and '1981-12-31'
 
select * from employee where hiredate >='1981-12-01' and hiredate <= '1981-12-31'

select * from employee where hiredate  < '1981-12-01' or hiredate > '1981-12-31'

--to get no of years diff betwwen 2 years
select DATEDIFF(year , '2000-01-01' , '2002-11-01')

-- to get no. of months diff between 2 years
select DATEDIFF(month , '2000-01-01' , '2002-11-01')

--to get in days

select datediff(day , '2000-01-01' , '2002-11-01')

select DATEDIFF(day , '2000-12-31' , '2001-01-01')

select * from employee where day(hiredate) = 15


select * , datediff (year , hiredate , getdate())  from employee    where datediff (year , hiredate , getdate()) < 40 


/* set operators 
 these opertors work on complete rows of the queries , 
 same columnso the results of the queries must have the same columnname 
 order and the types of columns must be compatible. 
 These are the 4 set operatos in sql server
 1)union
 2)union all
 3)intersect
 4)except*/

--gives the jobs in both but no repeated values
select job from employee where deptno =10
union -- if used union all then gives all jobs
select job from employee where deptno =20

-- gives only common values
select job from employee where deptno =10
intersect
select job from employee where deptno =20

-- removes common data from the set 1 based on set 2
select job from employee where deptno =10
except
select job from employee where deptno =20









/*Sub Query
 In SQL a Suquery can be simply defined as a query within another
 query.In other words we can say that a Subquery is a query that is 
 embedded in where clause of another sql query.The outer query i s called as 
 "main query" and inner query is called as "sub query"
 Rules of Subquery
  Sub queries must be enclosed in parantheses
  sub queries are on the right side of the comparison operator.
  Order by Command cannot be used in a subquery
  group by command can be used in a sub query
  you can place a sub query in a sql clauses:
  where clause and having clause , from clause.
  sub queries can be used with select insert update delete 
  satements along with expression operator.
 Types of sub queries
   there are three broad divisions of sub query
   single-row sub query
   multiple row sub query
   correlated sub query
 Syntax of Sub query
  select column_name from table_name where column_name
  expression operator
  (select column_name from table_name where.......)
 */

--print the details of the employee who is getting the highest salary

select * from employee where sal = (select max(sal) from employee)

