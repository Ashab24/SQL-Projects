                                                          /*		HR DATABASE EXERCISES	  */

use hr;
/*1*/ select first_name as "First Name",last_name as "Last Name" from employees;
/*2*/ select department_id from employees group by department_id;
/*3*/ select * from employees order by first_name desc;
/*4*/ select first_name,last_name,salary,((15/100)*salary) as "PF" from employees;
/*5*/ select employee_id,first_name,last_name,salary from employees order by salary;
/*6*/ select *,(salary*ifnull(commission_pct,0)+salary) as "Total Salary" from employees;
/*7*/ select max(salary) as "Maximum Salary",min(salary) as "Minimun Salary" from employees;
/*8*/ select avg(salary) as "Average salary",count(*) as "Number of Employees" from employees;
/*9*/ select count(employee_id) as "Number of Employees working with the company" from employees;
/*10*/ select count(job_id) as "Number of jobs available" from employees;
/*11*/ select upper(first_name) as "FIRST NAME" from employees;
/*12*/ select left(first_name,3) as "first name" from employees;
/*13*/ select rtrim(ltrim(first_name)) from employees;
/*14*/ select first_name,length(first_name) as "first name length",last_name,length(last_name) as "last name length" from employees;
/*15*/ select first_name,first_name regexp '^[0-9]+$' as "is a number" from employees;
/*16*/ select first_name,last_name,salary from employees where salary not between 10000 and 15000;
/*17*/ select first_name,last_name,department_id from employees where department_id in (30,100) order by department_id;
/*18*/ select first_name,last_name,salary from employees where (salary not between 10000 and 15000) and department_id in (30,100);
/*19*/ select first_name,last_name,hire_date from employees where year(hire_date)=1987;
/*20*/ select first_name from employees where first_name like '%b%' and first_name like '%c%';
/*21*/ select last_name,job_id,salary from employees where (job_id in ('it_prog','sh_clerk')) and (salary not in (4500,10000,15000));
/*22*/ select last_name from employees where length(last_name)=6;
/*23*/ select last_name from employees where last_name like '__e%';
/*24*/ select job_id,group_concat(employee_id) as "Employees ID" from employees group by job_id;
/*25*/ select replace(phone_number,124,999) as "new phone number" from employees;
/*26*/ select * from employees where length(first_name)>=8;
/*27*/ select concat(email,"@example.com") from employees;
/*28*/ select right(phone_number,4) from employees;
/*29*/ select substring_index(street_address,' ',-1) from locations;
/*30*/ select * from locations where length(street_address)<=(select min(length(street_address)) from locations);
/*31*/ select job_title,substr(job_title,1, instr(job_title, ' ')-1) from jobs;
/*32*/ select first_name,length(first_name) from employees where last_name like '__c%';
/*33*/ select first_name as "First name",length(first_name) as "Length of First name" from employees where first_name like 'a%' or first_name like 'j%' or first_name like 'm%' order by first_name;
/*34*/ select first_name,lpad(salary,10,'$') as SALARY from employees;
/*35*/ select left(first_name,8),repeat('$',floor(salary/1000)) as "$=1000",salary from employees order by salary desc;
/*36*/ select employee_id,first_name,last_name,hire_date from employees where day(hire_date)=7 or month(hire_date)=7;


                                                              /*	NORTHWIND DATABASE EXERCISES	*/

use northwind;
/*1*/ select ProductName,QuantityPerUnit from products;
/*2*/ select ProductID,ProductName from products where Discontinued=0;
/*3*/ select ProductID,ProductName from products where Discontinued=1;
/*4*/ select ProductName,UnitPrice from products order by UnitPrice desc;
/*5*/ select ProductID,ProductName,UnitPrice from products where Discontinued=0 and UnitPrice<20;
/*6*/ select ProductID,ProductName,UnitPrice from products where UnitPrice between 15 and 25;
/*7*/ select ProductName,UnitPrice from products where UnitPrice>(select avg(UnitPrice) from products);
/*8*/ select ProductName,UnitPrice from products order by UnitPrice desc limit 10;
/*9*/ select Discontinued,count(*) from products group by Discontinued;
/*10*/ select ProductName,UnitsOnOrder,UnitsInStock from products where UnitsInStock<UnitsOnOrder;











