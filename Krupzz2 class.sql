show databases;
use engineer;  # table names in database engineer are 'employee', 'engineer', 'new_product'(earlier 'product'), 'students'
show tables;
use employee; -- database 'employee' is empty, it doesnot have any tables formed in it
show tables;
update employee set empname="akshay" where empid=6;
select *from engineer;  -- engineer table is empty

select * from new_product; describe new_product;  describe table new_product;    

 select *from employee;      describe employee;       desc table employee;
 
 create database krupzzmania;  use krupzzmania; show tables; 
 create table krupzzila(sr_no mediumint unsigned, bike_name varchar(50));
 select *from krupzzila;
 drop database krupzzmania;  show databases; 
 
 update employee set city="dombivali" where empname="akshay";
 select manufactured_date as mfgdt from new_product; select  quantity, prod_id, p_name, availability, price, og_price, manufactured_date as mfgdt from new_product;
 alter table new_product modify  prod_id int  first;  alter table new_product modify availability tinyint(1) after price; 
 alter table new_product modify availability boolean;
 alter table new_product change p_name  prod_name varchar(35);
 alter table new_product rename column prod_id to product_id  ; -- while using 'rename' keyword u can only rename the column name and can't change its datatype
 update employee set salary=22002   where empid=4 ;  update employee set  salary=21009 where empid=7; update employee set salary=38005.95 where empid=6;
 update employee set city="mumbai" where empid=15;
 update employee set city="mumbai" where empid=16;
 update employee set city="mumbai" where empid=17; 
 update employee set city="mumbai" where empid=8; 
 update employee set city="mumbai" where empid=9;

select * from new_product;  select *from employee;
desc new_product; desc table new_product;  
alter table new_product modify product_id int unsigned  first;
insert into new_product values(100,1,"bottle",199.22,'2024-01-11',210),(100,4,'pen',299.39,"2023-12-30",500);

create view empview2 as
select empname,city,salary from employee where empid>5;
select * from empview2;

create or replace view empview2 as 
select empid, empname, city, salary from employee where empid>4;

select *from empview cross join empview2;
select *from dept; desc dept;
alter table dept add column contact_no bigint after dname;
rollback; -- it works on only commands like 'update','insert','delete'
update dept set contact_no=9898989834;
commit;
update dept set contact_no=9999999988 where deptno=5; commit;

select * from Employee;
select * from dept;
insert into dept values(111,"Sales",9898989811,"Thane");
insert into employee (empid,empname,joining_date) values(107,"jignesh",'2024-05-01'),(111,"mineshchandra","2024-01-01");
commit;

show tables; 
select *from books; desc books;  desc table books;
alter table books rename column bid to bookid;  commit;
rollback;
alter table books change column price price_of_the_book int unsigned;
rollback;
delete from books where bookname="moby dick" ;
rollback;



create view mergeddata as select empid, empname,contact_no,location from employee left join dept on employee.empid=dept.deptno;
select * from mergeddata;
alter table mergeddata rename mergedata1; -- this query wont work since 'mergeddata as not a base table(not a main table)
create or replace view mergeddata as rename mergeddata mergedata1; -- tried changing the name of the virtual table but we were unable to do so
create view mergedata2 as select empid, empname,contact_no,location from employee cross join dept on employee.empid=dept.deptno;
select * from mergedata2;
create view mergedata3 as select empid, empname,contact_no,location from employee right join dept on employee.empid=dept.deptno;
select * from mergedata3;  commit;

select *from empdept; select * from mergeddata;select * from mergedata2;select * from mergedata3; -- all the view/virtual tables displayed in a single query
commit; # committed and cannot be undone

create view mergeddata3 as select empid,empname,salary,city, contact_no, location from employee  inner join dept on employee.city=dept.location;
select *from mergeddata3 ;  commit;
drop view mergeddata3; -- this query tells us how to drop a virtual/view table.
rollback;

create view empview3 as select empid, empname,city, salary from employee where city="thane"; 
select *from empview3;

create view dept3 as select deptno,dname,contact_no from dept where location='dallas';
select *from dept3;

create view mergeddata4 as 
select empid,empname,salary,city, contact_no, location from employee left join dept on employee.city=dept.location 
union all
select empid,empname,salary,city, contact_no, location from employee right join dept on employee.city=dept.location ;
select *from mergeddata4;

select *from employee;
insert into employee values(20,"krupashankar",20001,"dombivali","2024-02-28"),(23,"keshav",20001,"thane",'2024-01-31');