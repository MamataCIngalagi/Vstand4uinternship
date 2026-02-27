use assignment3;

CREATE TABLE dept ( 
deptno INT PRIMARY KEY, 
dname  VARCHAR(14), 
loc    VARCHAR(13) 
);
INSERT INTO dept VALUES 
(10,'ACCOUNTING','NEW YORK'), 
(20,'RESEARCH','DALLAS'), 
(30,'SALES','CHICAGO'), 
(40,'OPERATIONS','BOSTON');

CREATE TABLE emp ( 
empno    INT PRIMARY KEY, 
ename    VARCHAR(10), 
job      VARCHAR(9), 
mgr      INT, 
hiredate DATE, 
sal      DECIMAL(7,2), 
comm     DECIMAL(7,2), 
deptno   INT, FOREIGN KEY (deptno) REFERENCES dept(deptno) 
);
INSERT INTO emp VALUES 
(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20), 
(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30), 
(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30), 
(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20), 
(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30), 
(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30), 
(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10), 
(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20), 
(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10), 
(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30), 
(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20), 
(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30), 
(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20), 
(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);


CREATE TABLE salgrade ( 
grade INT, 
losal INT, 
hisal INT 
);

INSERT INTO salgrade VALUES 
(1,700,1200), 
(2,1201,1400), 
(3,1401,2000), 
(4,2001,3000), 
(5,3001,9999); 

CREATE TABLE bonus ( 
ename VARCHAR(10), 
job   VARCHAR(9), 
sal   DECIMAL(7,2), 
comm  DECIMAL(7,2) 
);

-- QUESTIONS ON EMP AND DEPT TABLE:  
select * from emp;
select * from salgrade;

-- 1.WRITE A QUERY TO DISPLAY ALL THE DETAILS FROM THE EMPLOYEE TABLE. 
select * from emp;
 
-- 2.WAQTD NAMES OF ALL THE EMPLOYEES. 
select ename from emp; 

-- 3.WAQTD NAME AND SALARY GIVEN TO ALL THE EMPLOYEES.  
select ename, sal from emp;

-- 4.WAQTD NAME AND COMMISSION GIVEN TO ALL THE EMPLOYEES.  
select ename ,comm from emp;

-- 5.WAQTD EMPLOYEE ID AND DEPARTMENT NUMBER OF ALL THE EMPLOYEES IN EMP TABLE 
select empno, deptno from emp;

-- 6.WAQTD ENAME AND HIREDATE OF ALL THE EMPLOYEES .  
select ename, hiredate from emp;

-- 7.WAQTD NAME AND DESIGNATION OF ALL THE EMPLOYEES .  
select ename, job from emp;

-- 8.WAQTD NAME , JOB AND SALARY GIVEN ALL THE EMPLOYEES.
select ename, job,salary from emp;

-- 9.WAQTD DNAMES PRESENT IN DEPARTMENT TABLE. 
select dname from dept;

-- 10.WAQTD DNAME AND LOCATION PRESENT IN DEPT TABLE 
select dname, loc from dept;

-- 11.WAQTD name of the employee along with their salary.
select ename,sal  from emp;

-- 12.WAQTD name of the employee along with their annual salary. 
select ename, sal,(sal*12) from emp;

-- 13.WAQTD name of the employee along with their half-term salary. 
select ename, sal,(sal*6) from emp;

-- 14.WAQTD all the details of employees along with their half-term salary. 
select * ,sal*6 as half_term_salary from emp;

-- 15.WAQTD employee id, employee name, salary, and half-term salary of employees.
select empno, ename ,sal,(sal*6) from emp;

-- 16.WAQTD name of the employee along with a 10% hike in salary. 
select ename, (sal+10/100) from emp;

-- 17.WAQTD name of the employee along with a 10% deduction in salary.
select ename ,sal,(sal-10/100) ,(sal-0.10) as ordo from emp;
 
-- 18.WAQTD name of the employee along with a 32% deduction in salary.
select ename ,sal-0.32 from emp ;
