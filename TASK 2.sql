create database task2;
use task2;
create table department(
D_Id int,
D_Name varchar(50),
No_Staff int default 5,
No_Rooms int null
);

insert into department (D_Id,D_Name,No_Staff,No_Rooms) values
(101,'Physics',4,7),
(105,'Mech',7,41);
insert into department(D_Id,D_Name,No_Staff) values
(102,'chemistry',8);
insert into department(D_Id,D_Name,No_Staff,No_Rooms) values
(103,'IT',6,2);
insert into department(D_Id,D_Name,No_Rooms) values
(104,'CSE',12);

set sql_safe_updates=0;
update  department set no_staff=1 where d_name='chemistry';
delete from department where d_name='mech';
set sql_safe_updates=1;

select * from department;