desc employee;  select *from employee;
-- we are using a database called as employee
# we are creating a table on temporary basis
create table stut(studid mediumint not null, stud_name char(40) not null);
show tables;
select *FROM STUt; desc stut;
commit;
drop table stut;
rollback;  -- rollback works on 'delete','insert' and 'update' ONLY
insert into stut values(1,"abhi"),(2,'krupesh'),(3,"kajal");
insert into stut values(4,"abhi"),(5,'krupesh'),(6,"kajal");

show databases; use abhi; show tables;
use krupesh05; show tables;

use krupesh; show tables;

use engineer; select *from dept; desc dept;
alter table dept modify column contact_no bigint after location;
commit;
delete from dept where deptno=10;
rollback;
alter table dept add column nation varchar(40) not null default "USA";
commit;
alter table dept drop column nation;
rollback;
alter table dept add column nation varchar(40) not null ;
commit;
update dept set nation="USA" ;
rollback;
update dept set nation=
case
when deptno=1 then "USA"
when deptno=2 then "UK"
when deptno=3 then "UAE"
when location="Chicago" then "US"
else "USA"
end;
commit;
rollback;
update dept set nation=
case
    when deptno=4 then "USA"
    when deptno=10 then "UAE"
    when deptno=13 then "USSR"
 else "US"
 end;    #  gone from the table due to rollback
 rollback;
 commit;
 delete from dept where deptno=111;
 rollback; -- rollback works on 'delete','insert' and 'update' ONLY
 insert into dept values(108, "Operations", "Paris", 9898989833, "France");  
 select *from dept;
 rollback;
  insert into dept values(109, "sales", "Paris", 9899989833, "France"); -- gone from the table due to rollback
  rollback;
  select *from student1; select count(roll_no) from student1;
   use krupesh05; show tables;
  #date: 14.08.24
  select *from student;
insert into student1(roll_no,name,address) values(15,"nisha",'uran'),(17,"prathamesh",'digha'),(18,'sujal','dombivali'),(19,"abhishek","thakurli"),(20,"anand",'thane west');
select address from student1 group by address;
select *from student1;
desc student1;
# date: 30.08.24
update student1 set marks=83, grades="B"  where roll_no=18;
update student1 set marks=88, grades="B"  where roll_no=20;
rollback;
select *from fees;

-- date: 09.09.24
use abhi;  show tables; select * from books; -- column name bid
use abhishek; show tables; select * from employee; -- column name "empno"
use krupesh05; show tables; select *from student;  select *from student1;   select *from studentinfo1;
update abhishek.employee set city = "thane" where dept="it";

show databases;
use employee; show tables; select*from stut;  -- create one new table in employee database
use engineer; show tables; # tables: books,dept,dept3empdept,employee,empview,empview2
create table coursename(srno smallint primary key, name varchar(40), course char(40)); #employee database #parent table
select *from coursename; desc coursename;
create table student5(rollno smallint ,code int,foreign key(rollno) references coursename(srno) on delete cascade on update cascade); 
select *from student5;  desc student5;#child table
insert into coursename values(3,"krupesh","java"),(2,"nupur","mysql"),(1,"bhakti","c++"),(5,"mubinsir","python");
insert into student5 values(2,852);
insert into student5 values(1,52);
insert into student5 values(2,952);
delete from coursename where srno=2;
insert into student5 values(4,"raju"); -- becoz there is no rollno=4 in parent table
insert into coursename values(4,"raju","mysql");

create table student10(rollno smallint ,code int,foreign key(rollno) references coursename(srno) ); 
select *from student10;    drop table student10;

