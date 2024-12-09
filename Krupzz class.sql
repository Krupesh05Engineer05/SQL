/* show all databases which are present */
show databases;
# create a new database as your surname
create database Engineer;
-- now use this database
use engineer; 

 use employee;
-- create a table student with the following, student_id, student_name, class, marks
create table student(student_id bigint, student_name varchar(60), class smallint, marks int);
show tables ;   select *from new_product;  select *from student;
select *from student; # for displaying the table
-- display the structure of the student table, 
desc student; -- for describing the columns of the table like the datatypes which are used and all....etc..
# add 5 records in the table
insert into student values(1, "abhishek",5,55),(2,"krupesh",5,60);
insert into student values(3, "kajal",7,65),(4,"prathamesh",8,80);
insert into student(student_id,student_name,class,marks) values(5,"aakansha",10,99);
-- add two more records in the student table with only id and marks
insert into student(student_id,marks) values(14,98),(15,67); 
# display all records of the student table
select *from student;
-- modify the marks of the student with roll no.5(student_id = 5)
update student set marks=90 where student_id=5;
desc table student;
# add the address information in the student table 
alter table student add column address varchar(150);
-- add column name percentage
alter table student add column percentage float;
/* drop the column whose name is percentage*/
alter table student drop column percentage;
-- delete the details of the student with id= 14 and id=15 
delete from student where student_id=14 or student_id=15;
-- display column student name and class
select student_name, class from student;
create table engineer(sr_no int, employee_name varchar(100));
show tables;
-- add column city_name in the table student
alter table student add column city_name varchar(60);

-- change the name of city 'kopar' to 'thane' -- display designation column only
# display serial number
/* create a table product with the following: 1)product_id declare it as numeric and primary key,
2)product name declare with width of 30 characters and it cannot be empty,
3)price with decimal value 6 integers and out of 6, 2 are decimals,
4)manufactured_date take default value as 1st jan 2024 , 5)original price should be greater than 20 */
create table product(product_id int primary key, product_name varchar(30) not null, price decimal(6,2), manufactured_date  date default '2024/01/01', og_price int check(og_price>20));
select *from product;
desc product;
insert into product values(2, 'washing_machine', 9999.33, 20231222,7894);
insert into product values(3, 'pen', 199.33, '2023/02/01', 894);
insert into product(product_id,manufactured_date,product_name) values(1,"2024-02-14","oven");
insert into  product(product_id, manufactured_date,product_name) values(5,"2024/01/18","pen");
insert into  product(product_id,product_name,og_price) values(6,"bottle",56);
insert into product(og_price, product_id, price, product_name) values(8524, 99,  556.2, "microwave");
insert into product(product_id,manufactured_date,price,product_name) values(49,'2024-03-06',99,"water bottle"),(48,"2023-12-31",99.09,'pen');
insert into product(product_id, product_name,   price,     og_price) values(32, "ball pen", 51.0, 2002); 
# display the structure of the product table  *
-- change the name of the column product_name as p_name *
# change the size of the column price from 6 integers to 7 integers
-- add column expiry_date in the product table  *
/* add column discounted_price in the product table and
then drop that column from the product table  */ 
select *from product;
desc product;  describe table product;
alter table product rename column p_name to product_name;
alter table product rename column p_name to product_name;
alter table product rename column  product_name to p_name;
alter table product change prod_id p_id int Primary key; -- u can use 'change' keyword instead of 'rename', but donot use word 'to' and 'column' and u have to mention the data type and constraint as well.
alter table product add expiry_date date ;
alter table product modify price decimal(7,2);
alter table product add discounted_price decimal(6,2);
# add column quantity and make it as 1st column 
-- add column availability to store the detail true or false and place it after p_name
alter table product add column quantity int not null first;
alter table product add column availability boolean after p_name;
alter table product drop column discounted_price;
 -- u cannot use 'before' but only 'after'
-- use keyword 'update' and also use condition 'where' to enter the values in the table 
update product set og_price=11999,price=123.43 where prod_id=1;
show tables;
select * from product;
update product set availability=false where prod_id=1;
update product set og_price=60,availability=0 where prod_id=5;
update product set expiry_date='2100/12/31';
update product set availability=40 where prod_id=3;
update product set availability=true where prod_id=3;
update product set og_price=201 where prod_id=49;
update product set quantity=45;  -- date: 16/05/2024
update product set availability=0;
update product set quantity=25,availability=1 where prod_id=3;
update product set quantity=24, availability=1 where prod_id=48;
  update product set  quantity=48, availability=1, manufactured_date="2024/03/05" where prod_id=99;
  update product set price=47 where prod_id=6;
  update product set og_price=150 where prod_id=50;
  alter table product modify column expiry_date date 	;
  alter table product modify column expiry_date date after og_price;
  -- increase the quantity of all products by 10
  update  product set quantity=quantity+10;
  # decrease the price of the products in product table by 10
  update product set price=price-10;
  update product set price=price+10;
  # update the og_price by 50 in the product table
  update product set og_price=og_price+50;
  -- update the price of the product table, multiply by 5 times
  update product set price=price*5;
  -- update the price of the product table , divide by 5 times
  update product set price=price/5;
  -- display all available products (means where available=1)
  select *from product where availability=1;
  -- display the table product where availability=0
  select *from product where availability=0;
  # update the price column of the product table and do square of the price
  update product set quantity=quantity*quantity;  --
  -- delete all records where manufactured date is '2024-02-14'
  delete from product where manufactured_date='2024-02-14';
  -- change the availability of all of the products as true(availabililty=1) , 
  # delete the column expiry date
  -- rename the table product as 'new_product'
  -- display all records of the table
  update product set availability=1; -- change the availability of all of the products as true
  alter table product drop column expiry_date;
  alter table product rename new_product;
  select * from new_product where prod_id%2=0; -- '%' is a modulus opereator where it returns the remainder value of the division %
  select ascii('A'); -- ascii value of A  # date is 18/05/2023
  select *from employee;   desc employee;   desc table employee;
  -- create a table employee 
  create table employee(empid int not null, empname varchar(100) not null, salary int unsigned check (salary>=20000),
  city varchar(150), joining_date date default "2024.01.01", department varchar(30));
  alter table employee modify column empid int primary key;
  insert into employee values(2, "krupzz", 20100, 'dombivali','2023/03/05', "MIS Executive");
  insert into employee(empid, empname, salary, city, department) values(1, "abhishek", 20001, 'diva', "I.T");
  insert into employee(empid, empname, salary, city, department)values(4, "abhi", 22000, "thane", "H.R");
  insert into employee(empid, empname, salary, city, department) values(3, "kru", 25000, "Thane", "Operations"),(6,"akku",38000,"dombs",'lead trainer'),(5,"kajol",20000,"mumbra",'operations'),(7,"prathamesh",21000,"thane","T.L");
  
  # date: 23-05-24, Q.1. display empname and salary with the title employee_name and employee_salary
  -- Q.2. display all unique department names
  -- Q.3. display all records for all employees with city Thane
  # Q.4.  dislay all employess whose salary is greater than rs.30000/- .
  -- Q.5. display all employees whose salary is in a range of 25000 to 35000. 
  -- Q.6.  display all employees whose salary is in a range of 25000 to 40000.
  -- Q.7. display only employee id as 'ids of employes of my company'
  -- Q.8. display all employees belonging to city="mumbra" and(logical OR) "thane"
  -- Q.9. display all employes who have joined before '2023-12-01'
  -- Q.10. display all employees belonging to thane and salary greater than 23000.
  
  select empname AS employee_name, salary as employee_salary from employee; -- ans of Q.1
  select empname, salary from employee;  # show only employee_name nd salary from table employee
  select distinct department from employee;  -- ans of Q.2
  select  *from employee where city='thane';  -- ans of Q.3
  select *from employee where salary>30000;  -- ans of Q.4
  select *from employee where salary between 25000 and 35000; -- ans of Q.5
  select  *from employee where salary between 25000 and 40000; -- ans of Q.6
  select empname AS 'ids of employes of my company' from employee;  -- ans of Q.7
  select *from employee where city='thane' OR city="mumbra";  # ans of Q.8.  
  select *from employee where joining_date<="2023-12-31";  -- ans of Q.9
  select *from employee where city="thane" and salary>=23000;
  
  --  Date: 28/05/24, Q.1 display all emplopye records in alphabetical order of emp name
  # Q.2. display all records where emp name is not blank 
  -- Q.3. display all records in the descending order of date of joining
  # Q.4. display all redords in the order of department and for each department  employee should be in the descending order of the salary
  -- Q.5. display all employee names starting with the letter A 
  -- Q.6 display all employee names ending with leter A and then display all empname which starts with A and ends with D and try different combinations in LIKE operators
  
  select *from employee order by empname; -- ans of Q.1
  select *from employee where empname is not null;  # ans of Q.2
  select *from employee order by empname desc;
  select *from employee order by joining_date;  select *from employee order by joining_date desc; # ans of Q.3
  update  employee set joining_date='2024-02-05' where empid=5; update employee set joining_date='2024-01-30' where empid=3; update employee set joining_date='2024-02-05' where empid=7;
  select *from employee order by department, salary desc;  select *from employee order by department, salary; -- Q.4
  select *from employee where empname like "a%"; select *from employee where empname like "k%";  # ans of Q.5
  
  insert into employee(empid, empname, salary, department) values(8,"raheema",29000,"MIS Executive"), (9,"laleet",50000,"Operations");
  insert into employee values(10,"aman",24000,"kalyan",'2024-03-31','operations'),(11,"anand",25300,"thakurli",'2023-12-28','T.L'),(13,"aaru",26000,"badlapur","2024-03-11",'I.T');
  insert into employee values(12,"mayuri",27000,"kharghar",'2024-01-12',"H.R"),(14,"kavita",29000,"airoli","2024-01-23","H.R");
  select *from employee where empname like "_a%"; -- second letter is A
  select *from employee where empname like "%a"; # that ends with a
  select *from employee where city like "%i";  -- that ends with i 
  select *from employee where city like "d%i"; # that starts with D and ends with I 
  select *from employee where empname like "a__%"; select *from employee where empname like "%_u";
  select *from employee where empname like"%_a_";  
  
  -- today's date: 30-05-24
  -- Q.1. display all employee starting with letter A and ending with N
  # Q.2. display all records not belonging to department sales
  -- Q.3. display the details of employes with empid 1,3,5
  -- Q.4. display the details of employe with excluding empid 1,3,5
  select *from employee where empname like "a%n";  -- Q.1
  select *from employee where department  !="sales"; # Q.2. 
  -- Q.5. display all departments except "I.T" from department column
  select *from employee where department !="I.T"; -- Q.5.  
  select *from employee where empid=1 or empid=3 or empid=5; -- Q.3
  select *from employee where empid in(1,3,5,7);  -- to display all the records from table employee with empid 1,3,5,7
  select *from employee where empid!=1 and empid!=3 and empid!=5; -- Q.4. ans
  select *from employee where empid not in(1,3,5); -- Q.4 ans by using 
  
  -- Q.6 display all even numbered ids  (for eg: 2,4,6,8....)
  select *from employee where empid%2=0;    select *from employee where empid%2!=0;   select *from employee where empid%2;
insert into employee(empid, empname, salary, department) values(15,"krushang",30120,"sales"),(17,"kanchan",29500,'sales'),(16,'kunjan',31000,"dietician"),(18,'rishabh',26577,'sales');
select * from employee where department!="sales";

/* today's date01-06-2024
MySQL Functions */
select char_length("krupesh"); select character_length("krupzz");  select char_length(empname) as "employee name " from employee;
select char_length(empname,empid)  from employee;

-- display the message as "the name of employee is 'empname' living in a city 'cityname' in the department of "department name" 
/*for eg: display the message as: my name is _ in the department  _ and living in the city _ for all employee data  */

Select concat("my name is  ", empname," in the department ", department," and living in the city ",city) as Message from employee ;

-- today's date:  04-06-2024   
# Q.1. display today's date ,  display all records where employes who have salary in the multiples of 10
-- Q.2. display all employe records for odd emp id in descending order
-- Q.3.  display all empname whose starting from 1st and last letter is same
-- Q.4. display all employees who have joined in the month of may
# Q.5. display day name on which employee(date of joining) have joined
/* Q.6. display all employees name in reverse 
 Q.7. display the date of joining in the following format, day_name, month_name and year with empname */
 
 select current_date();   select current_timestamp();  select now(); 
 select dayname("2024/06/04");  select dayname(now()); select dayofmonth('2024-03-05');
 select * from employee where  salary%10=0;  select *from employee where mod(salary, 10)=0; -- answer of Q.1
 select *from employee where mod(salary, 10); -- for those salaries whose ending in non zero
 select *from employee where mod(empid, 2) order by empid desc; # 1st  way to solve Q.2
 select *from employee where empid%2 order by empid desc;  # 2nd way to solve Q.2
 select *from employee where empname like "k%k"; select *from employee where empname like 'a%a';  -- ans of Q.3
 insert into employee values(19,"aakansha",38000,"thane","2024-05-01","lead trainer");
 insert into employee values(21,"anila",35000,"vashi","2024-01-01","H.R"),(22,"amita",32291,"airoli",'2024-02-05',"operations");
 select *from employee where monthname(joining_date)='may' ;  -- ans of Q.4
 -- Q.8 if date of joining is in 3rd month(i.e march month) 
 select *from employee where month(joining_date)=3; -- ans of Q.8
 select reverse(empname) from employee;  -- Q.6
 select dayname(joining_date) from employee;  -- ans of Q.5
 select joining_date, dayname(joining_date), monthname(joining_date), year(joining_date) from employee; -- ans of Q.7
 
/* date: 06/06/24 

Q.1 display empname , salary with 5% as bonus(3rd column)
Q.2. display empname in upper and lower case
Q.3 display all employees who have  join on friday
Q.4 display all employees 3rd & 4th letter of city, 2nd to 5th letter of empname, and length(department).
Q.5, display date of confirmation for each employees as 6th month  after their date of joining
Q.6 display the date of promotion fopr each employee as two years after their date of joining */

use engineer; select pow(2,3); select power(3,2); select pow(16,2); select power(81,81);
select sqrt(256); select empname, salary, sqrt(salary)  from employee;
  select square(81); -- not a valid function in mysql  
  select square(salary) from employee; # 
select sin(45); select sin(90);  select cos(45);  select cos(90);   select cot(45); select cot(90); select tan(1); select tan(90);
select sin(salary) from employee; select cos(salary) from employee;
select min(salary) from employee;  select max(salary) from employee; select sum(salary) from employee;
select sum(salary) from employee where empid=18 or empid=19;
select avg(salary) from employee;  select avg(salary) from employee where empid=1 or empid=2;
select round(avg(salary)) from employee; select round(avg(salary)) from employee where empid=1 or empid=2;
select  empname, salary, salary*1.05 as bonus from employee; -- Q.1 ans 
select empname, lcase(empname), ucase(empname) from employee; # Q.2 ans
select city, lcase(city), ucase(city) from employee;  -- similar to Q.2
select empid, empid*2 as new_empid from employee; -- similar to Q.1
select salary, round(salary) from employee; -- 
select ceiling(38.91); select ceiling(31.1); select ceiling(31.00001);
select floor(32.1);  select floor(32.99);
select joining_date, dayname(joining_date) as "day of joining" from employee; -- similar to Q.3
select joining_date, dayname(joining_date) as "day of joining", dayname(joining_date)="friday", dayname(joining_date)="monday" from employee;  -- Q.3
select empname, substring(empname, 3,2), city, substring(city, 2,4), department, length(department) from employee;  # Q.4 ans
select joining_date, adddate(joining_date, interval 6 month) as "date of confirmation" from employee;  -- Q.5	
select joining_date, adddate(joining_date, interval 180 day) as "date of confirmation" from employee; # Q.5
select *, dayname(joining_date) as 'day ka name' from employee where dayname(joining_date)="friday";  # Q.4
select joining_date, adddate(joining_date, interval 2 year) as " day of promotion" from employee;  # Q.5
select joining_date, adddate(joining_date, interval 24 month) as " day of promotion" from employee; 

-- date 08/06/2024
# Q.1 display the total no. days after the employee has joined
-- Q.2 display the first four records from the employee table
-- Q.3 dispaly 4th,5th,6th record from  the employee table
-- Q.4 display the first 3 letters of each city and last 2 letters of the department
-- Q.5 display all records if the length of the employe name is greater than 5

-- answers
select joining_date, datediff( now(), joining_date) as "no of days" from employee; -- ans of Q.1
 select joining_date, datediff(joining_date, now()) as "total no. of days" from employee; -- wrong way to solve Q.1
 select * from employee where empid=1 or empid=2 or empid=3 or empid=4;
 select *from employee limit 4;  -- ans of Q.2
 select *from employee limit 3,3; # ans of Q.3
 select city, substring(city, 1,3), left(city, 3), right(department, 2) from employee; -- ans of Q.4
select * from employee where length(empname)>5; -- similar to Q.5
  
 -- date: 11/06/24
/*  Q.1. display the total number of employees 
Q.2 display the total no. of employees for each department
Q.3 display the highest and the lowest salary from the employees table
Q.4 display the total salary for all employees belonging to city 'mumbai'
Q.5 display the average salary for each department
*/
-- answers
select count(empid) from employee;  # Q.1
select department, count(empid) as count1 from employee group by department ; #Q.2
select max(salary) as "maximum salary" from employee;  select min(salary) as "minimum salary" from employee;
select  max(salary) as "highest salary", min(salary) as "lowest salary" from employee; -- Q.3

select sum(salary) from employee;  select avg(salary) from employee;
select  city,max(salary) as ms from employee group by city ;
select city,sum(salary) as max from employee where city="mumbai" group by city ; -- Q.4
select department,avg(salary) from employee group by department;
select department,avg(salary) as "avgs" from employee  group by department order by avgs ;

-- date: 13-6-24
/* Q.1 display the total no. of employees joined on each date
Q.2 display the department names for which more than 2 employees have joined
Q.3 display the max salary of each department arranged in descending order
Q.4. display the total salary of each deptment only if total greater than 30k
Q.5. display total no. of employees belonging to each city 
Q.6. display average salary of each department of all employees joined on each date and avg salary greater than 25k */

# answers0
select joining_date, count(empname) from employee group by joining_date;  -- Q.1
select department,count(empname) from employee group by department having count(empname) >2 ;  -- Q.2
select department,max(salary) from employee group by department order by max(salary) desc;  -- Q.3
select department,sum(salary) from employee group by department having sum(salary) > 30000;  -- Q.4
select city,count(empname) from employee group by city ; -- Q.5
select joining_date,department,avg(salary) from employee group by joining_date,department having avg(salary) > 25000;  -- Q.5


-- date: 18-06-24
/* Q.1 remove the column department from the employee table
        */
alter table employee drop column department;        
select *from employee;
CREATE TABLE dept(
deptno int(2) not null primary key,
dname varchar(50) not null,
location varchar(50) not null);
insert into dept values (10,'Accounting','New York');
insert into dept values (20,'Research','Dallas');
insert into dept values (30,'Sales','Chicago');
insert into dept values (40,'Operations','Boston');
insert into dept values (1,'Operations','Boston'),(2,'sales','New York'),(3,'sales','Dallas'),(4,'Operations','Chicago'),(5,'Operations','New York')  ;
insert into dept value(11,'Accounting','London'),(12,'Sales','Berlin'),(13,'Research','UK'),(14,'Operations','Ny');
select * from dept; desc dept; describe table dept;
-- Q.2. list all employees(empnames from employee table) along with their department names(dname from dept table)
# Q.3 LIST ALL EMPLOYEES(empname from employee table) ALONG WITH THEIR DEPARTMENT(from dept table) NAMES INCLUDING EMPLOYEES WHO DONOT BELONG TO ANY DEPARTMENT
-- Q.4 LIST ALL DEPARTMENTS(from dept table) ALONG WITH THEIR EMPLOYEES(from employee table) INCLUDING DEPARTMENTS THAT DO NOT HAVE ANY EMPLOYEES(use right join if employee table is on left)
# Q.5 list all employees and their departments that all records from both tables are included
-- Q.6. display all possible pairs of employees and department wrong question since we have deleted the column 'department' from employee
-- Q.7. find pairs of employees who belong to the same department
-- answers
select *from dept;
select empname from employee inner join dept on employee.empname=dept.dname;  -- wrong o/p 
select empname from employee union select dname from dept; -- only 1 column 'empname' is coming
select employee.empname, dept.dname from employee inner join dept on employee.empid=dept.deptno; -- ans of Q.2
select e.empname, d.dname from employee as e inner join dept d on e.empid=d.deptno; -- ans of Q.2 using aliases
select employee.empname, dept.dname from employee left join dept on employee.empid=dept.deptno;  # ans of Q.3
select employee.empname, dept.dname from employee right join dept on employee.empid=dept.deptno; # ans of Q.4
select empid, empname, salary,deptno,dname,location from employee left join dept on employee.empid=dept.deptno
union all 
select empid, empname, salary,deptno,dname,location from employee right join dept on employee.empid=dept.deptno;  -- ans of Q.5
select *from employee cross join dept; -- ans of Q.6

select *from employee;
select * from dept;  select  empid, empname,deptno ,dname from employee inner join dept on employee.empid=dept.deptno;  

select empname,salary,
case
  when salary>= 37000 then "very good"
  when salary>= 26000 then "good"
  else
"average"
end 
as info from employee;

select salary, if(salary%2 =0,"even","odd") as condition1 from employee;
select salary, if(salary%3 =0,"even","odd") as condition1 from employee;

select empid,empname,if(empid<05,"not acceptable","acceptable") as column1 from employee;
select empid,empname,if(empid<20,"not acceptable","acceptable") as column1 from employee;
select empid,empname,if(empid<110,"not acceptable","acceptable") as column1 from employee;
select if(strcmp(empname,city)=0," = "," != ")as "text" from employee;
select if(strcmp(dname,location)=0," = "," != ")as "text" from dept;
select if(strcmp(dname,location)=1," = "," != ")as text from dept;
select if(mod(empid,5)=0, "divisible by 5" , "not divisible by 5") from employee;
select if(mod(empid,5)=0, "divisible by 5" , "not divisible by 5") as text2 from employee;
select salary,if(salary>25000,"good","ok ok") as message from employee;

select *from dept;
update dept set deptno =
case  when deptno=1 then 111
      when location = 'New York' then 112
else
deptno 
end;     /* this will set the deptno of "1" as "111" and deptno of "2" as "112" since in query it is mentioned that wherever "New York" is written that row's deptno will be set to 112 */

rollback; -- to undo the changes that were made in the previous query
select empid,empname,salary,city, if(empid>10,"ok","not ok") as message from employee;
-- date: 20/06/2024
select employee.empname, dept.dname from dept right join employee on employee.empid=dept.deptno;  -- ans of Q.3 using right join  
select employee.empname, dept.dname from dept left join employee on employee.empid=dept.deptno;  -- ans of Q.4 using left join
select  empid, empname,deptno ,dname from employee inner join dept on employee.empid=dept.deptno;  -- ans of Q.3 in another way
select empid, empname,deptno, dname from employee left join dept on employee.empid=dept.deptno; -- ans of Q.4 in another way
select empid, empname,deptno, dname from employee right join dept on employee.empid=dept.deptno; # ans of Q.5 in another way

-- date22/06/24

select * from employee cross join dept ; -- ans of Q.6

select E1.Empname as Employee1,E2.Empname as Employee2,dname from Employee as E1 ,Employee as E2 where E1.empid=E2.empid and E1.empid<E2.empid  inner join Dept on E1.Empid=dept.deptno;


/* from gemini AI tool
 SELECT e1.Empname as Employee1, e2.Empname as Employee2
FROM Employee e1
INNER JOIN Employee e2 ON e1.deptid = e2.deptid  -- Join on department ID
WHERE e1.Empid <> e2.Empid;  -- Exclude duplicate employee (same ID)
*/

-- display empname,city and salary whose id are greater than 4 in virtual table empview
create view  empview as
select empname,city,salary from employee where empid>4;
insert into empview values('abc','xyz',5678);
update empview set empname='abc' where city='thane';
select * from empview;
select empname,city,salary,(empid>4) from employee ; -- wrong output
select empname,city,salary from employee where (empid>4); -- correct output

-- date: 25-06-24

select * from dept;
start transaction; -- not always required if 'select' command is used
insert into dept values(107,'HR','Thane');
update dept set location ='navi mumbai' where deptno=107;
commit; -- now after this command rollback won't undo the changes that were made b4 'commit' command
delete from dept where deptno=107;
rollback; # undo the changes
create view empdept as select empid,empname,dname,location from employee inner join dept on employee.empid=dept.deptno;
select *from empdept;
update empdept set location='New York' where empid=14; -- with the help of this query we managed to update the details in the main parent table 'dept' also, we changed the location from 'Ny' to 'New York' in main table 'dept' also
commit;

-- subquery
alter table books rename column price_of_the_book to price;
select *from books;
# display the book name of most expensive book
select bookname, max(price) from books group by bookname;
select bookname, price from books where price=(select max(price) from books);
select bookname, price from books where price in (select max(price) from books);
-- display all bookname with price gretaer than average price
select bookname, price from books where price > (select avg(price) from books);
select price, avg(price) from books where price > (select avg(price) from books) group by price;

select *FROM EMPLOYEE;
# display names of employees whose salary is greater than than amita
select empname,salary from employee where salary>(select salary from employee where empname="amita");
select salary from employee where empname="amita";

-- date: 27-06-24

select *from books;
alter table books add column class_id int;
alter table books add foreign key (class_id) references class(class_id);
select *from class;
create table orders(
OrderID int not null,
Ordernumber int not null,
PersonID int,
 primary key (orderID),
 foreign key (PersonID) references Persons(PersonID));
 
-- Q.1 display the names of those employees who has the lowest salary
select empid,empname,salary from employee where salary in (select min(salary) from employee);
select empid,empname,salary from employee where salary in (select max(salary) from employee); -- suppose if u want to find max salary

-- Q.2 display the lowest and the highest salary of the employee(both combined in a single query)
select empid,empname,salary from employee where salary = (select min(salary) from employee ) or 
salary = (select max(salary) from employee );

# Q.3find employees who have salary higher than average salary
# Q.4find the second highest salary in the employee table
# Q.5 list the employees who joined after the employee with the minimum salary
# Q.6 list the employees who have the same salary as the employee with empid 1 or 101(if your table has empid as 101)
update employee set salary=25000 where empid=5; -- so that there are atleast two employees whose salary is same
select empname, salary from employee where salary= (select avg(salary) from employee); -- wrong o/p of Q.3
select empname, salary from employee where salary> (select avg(salary) from employee); -- ans of Q.3
select empname,salary from employee where salary<(select max(salary) from employee); -- wrong o/p of Q.4
select max(salary) from employee where salary<(select max(salary) from employee); -- correct o/p of Q.4
select empname,max(salary) from employee  where salary<(select max(salary) from employee) group by empname ; -- not proper o/p of Q.4
select empname, salary, joining_date from employee where joining_date> (select joining_date from employee where salary=(select min(salary) from employee)); -- ans of Q.5
select empname, salary from employee where salary=(select salary from employee where empid=1); # ans of Q.6

-- date: 29/6/24, test
-- Q.1, create a table named orders, orderid(it should automatically take values) as a numeric data it should not be null and it should take different values, customerid, order_date, order_amount(it should take 6 integers and 2 decimals 
-- Q.2 insert 5 records in each value/column
-- Q.3 add 2 more records in the orderid and amount only. 
-- Q.4 write a query to find top 3 customers who have spend the most amount of money on orders along with the total amount they have spent
# Q.5 find total amount spend on each customer

-- answers

create table orders(orderid int unsigned not null unique, customerid int unsigned, order_date date default '2024-01-01', order_amount decimal(6,2),primary key(orderid));
select *from orders;  desc orders;
alter table orders rename column customerid to customer_name;
alter table orders modify column customer_name varchar(50);
insert into orders(orderid,customer_name, order_date, order_amount) values(1,"krupesh",'2024-01-30',3456.12);
insert into orders values(2,"abhishek","2024-01-11",234.12);
insert into orders values(3,"prathamesh","2024-01-10",834.12),(4,'kajal','2024-02-11',9812.11),(5,'shweta','2024-01-04',5234.12);
insert into orders(orderid,order_amount) values(6,345.23),(7,2567.23); -- ans of Q.3
select order_amount, sum(order_amount) as 'total amount' from orders group by order_amount order by sum(order_amount) desc limit 3;  # ans of Q.4
select customer_name,sum(order_amount) as 'total amount' from orders group by customer_name; -- ans of Q.5
