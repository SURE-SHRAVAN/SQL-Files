use training



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

select * from employee

select * from department

select * from salgrade

insert into department values (10, 'accounting', 'new york')
insert into department values (20, 'research', 'dallas')
insert into department values (30, 'sales', 'chicago')
insert into department values (40, 'operations', 'boston')

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

select * from employee -- 1
select * from salgrade -- 2
select * from department -- 3

select distinct job from employee --4

select distinct deptno from employee --5

select * from employee order by sal asc --6

select * from employee order by ename desc --7

select * from employee order by deptno asc , job desc --8

select distinct job from employee order by job desc -- 9

select * from employee where job = 'manager' -- 10

select * from employee where empno in (select distinct mgr from employee) --11

select * from employee where deptno <> 10 --12

select * from employee where job <> 'clerk' --13

select count(*) [no. of clerks] from  employee where job = 'clerk'

select * from employee where job <> 'manager' and job <> 'president' --14

select * from employee where hiredate < '1981' --15

select * from employee where sal > 2000 --16

select empno , ename , sal , sal/30  [daily sal] from employee  order by [daily sal] asc --17

select empno , ename , sal , sal/30  [daily sal] from employee  order by sal * 12 asc --18 

select * from employee where comm >sal -- 19

select *  from employee where sal/ 30 > 100  --20

select * from employee where job = 'salesman' --21

select *  from employee where job = 'clerk' --22 

select * from employee where len(sal) = 4 --23

select *  from employee where sal % 2 <> 0 --24

select *  from employee where sal % 2 = 0 --25

select * from employee where job = 'clerk' or job = 'analyst' --26

select * from employee where job = 'clerk' or job = 'analyst' order by ename desc --27

select * from employee where sal between 2000 and 3000 -- 28

select * from employee  where deptno = 10 or deptno = 20 --29

select * from employee where deptno = 10 and job = 'manager' -- 30

select * from employee where deptno = 20 and job = 'clerk' --31

select * from employee where year(hiredate) = '1981' --32

select * from employee where sal * 12 between 22000 and 45000 --33

select  * from employee where empno in (7788 ,7839 , 7902 , 7566 ) --34

select * from employee where month(hiredate)  = 2 --35

select * from employee where month(hiredate)  <> 2 --36

select * from employee where year(hiredate) <> 1980 --37

select * from employee where year(hiredate) = 1980 and MONTH(hiredate)  = 2 --38

select * from employee where year(hiredate) = 1980 and MONTH(hiredate)  < 6 --39

select * from employee where year(hiredate) = 1980 and MONTH(hiredate)  > 6 --40

select * from employee where day(hiredate) = 15 --41

select * from employee where year(hiredate) < 1981 or year(hiredate) > 1981 --42

select * from employee where year(hiredate) = 1980 and ( job = 'manager' or job = 'salesman') -- 43

select empno , ename , hiredate  , datediff(year , hiredate , getdate()) [experience]  from employee -- 44

select * from employee where ename = 'smith' --45

select * from employee where ename = 'smith' or ename ='allen' --46

select sum(sal) [total sal]  from employee --47 select ename , sal + isnull(comm, 0) [total sal]  from employee

select ename as [ not eligible ]  from employee where comm is null  --48

select ename as [ not eligible ]  from employee where comm is not null --49



select * from employee where ename like 's%' --50

select * from employee where ename like '%s' --51

select * from employee where ename like '%s%' -- 52

select * from employee where empno not like '78%' --53

select * from employee where ename like '__a%' -- 54 

select * from employee where len(ename)  = 4 --55 like '_____'

select * from employee where ename like 's____%' --56

select * from employee where ename like '%[_]%' --57


select * from employee where  (sal * 0.20)  + sal  > 3000  --58

select sum(sal) from employee --59

select avg(sal) from employee --60

select max(sal) from employee --61

select min(sal) from employee --62

select count(*) from employee --63

select count(*) from employee where comm is not null --64

select count(*) from employee where comm is  null --65

select max(sal) , min(sal) , avg(sal) from employee where deptno = 10

select count(*) from employee where job = 'salesman'--67

select count(*) from employee where ename like '%s%' --68

select count(*) from employee where ename like 's%' --69

select count(*) from employee where ename like '%s' --70

select count(*) from employee where deptno = 10 --71

SELECT deptno, COUNT(*) AS [no_of_employees] FROM employee WHERE deptno IN (10, 20, 30) GROUP BY deptno;













    








