-- ASSIGNMENT 4 
use assignment3;
-- ASSIGNMENT ON EXPRESSION & ALIAS 
-- 1.WAQTD NAME OF THE EMPLOYEE ALONG WITH THEIR ANNUAL SALARY. 
select ename, sal,(sal*12) annual_salary from emp;
-- 2.WAQTD ENAME AND JOB FOR ALL THE EMPLOYEE WITH THEIR HALF TERM SALARY. 
select ename, sal,(sal*6) as half_term_salary from emp;
-- 3.WAQTD ALL THE DETAILS OF THE EMPLOYEES ALONG WITH AN ANNUAL BONUS OF 2000. 
select * , sal, (sal*12 + 2000) as annual_2000_bonus from emp; 
-- 4.WAQTD NAME SALARY AND SALARY WITH A HIKE OF 10%. 
select ename, sal , (sal+0.10) as hiked from emp;
-- 5.WAQTD NAME AND SALARY WITH DEDUCTION OF 25%. 
select ename, sal , (sal-0.25) as hiked from emp;
-- 6.WAQTD NAME AND SALARY WITH  MONTHLY HIKE OF 50. 
select ename, sal, (sal+50)*12 as monthly_hike from emp;
-- 7.WAQTD NAME AND ANNUAL SALARY WITH DEDUCTION OF 10%. 
select ename, sal, (sal*12 -0.10) as deduction_10per from emp;
-- 8.WAQTD TOTAL SALARY GIVEN TO EACH EMPLOYEE (SAL+COMM). 
select sal,(sal+comm) as commissioned from emp;
-- 9.WAQTD DETAILS OF ALL THE EMPLOYEES ALONG WITH ANNUAL SALARY.
select *, (sal+12) as annual_salary from emp;
-- 10.WAQTD NAME AND DESIGNATION ALONG WITH 100 PENALTY IN SALARY. 
select ename, job, (sal-100) as penalty from emp;
