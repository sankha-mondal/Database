
SELECT * FROM newdb.user;
 
insert into user values('bill@gmail.com', 'Bill Gates', 'b123', 'USER', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK9gqFKRn28xKHD1CAbEevdzsLmsv5yQkGnQ&usqp=CAU');
insert into user values('rakhi@gmail.com', 'Rakhi Dey', 'r123', 'USER', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa4xjShh4ynJbrgYrW_aB4lhKSxeMzQ3cO_A&usqp=CAU');
insert into user values('admin@ad.com', 'Admin Admin', 'admin', 'ADMIN', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfjtNZyYr6dlLc8d12NnaNNsb1YQC3OHWIPZXylJaAWWr4cAgQ0FKIhV5v1QO07KWghTE&usqp=CAU');

alter table user modify url blob;

ALTER TABLE user ADD UNIQUE (u_name);

drop database paytmdb;

create database paytmdbcomments;
alter table user modify url blob;

---------------------------------------------- One to One ---------------------------------------------
-- insert data for address table
insert into address values (1, 'Kolkata');
insert into address values (2, 'Bangalore');
insert into address values (3, 'Pune');
insert into address values (4, 'Hyderabad');

-- insert data for student table
insert into student values (100, 'ajay@gmail.com', 'Ajay', 2);
insert into student values (101, 'vijay@gmail.com', 'vijay', 1);
insert into student values (102, 'akask@gmail.com', 'Akash', 3);

describe table student;

create database expdb;

--------------------------------------------- One to Many -----------------------------------------------

-- insert data for project table
insert into project values(1, 'Library Management System');
insert into project values(2, 'Product Management System');
insert into project values(3, 'Employee Management System');

-- insert data for employees table
insert into employees values(1, 'Aman', 1);
insert into employees values(2, 'Ajay', 3);
insert into employees values(3, 'Anup', 1);
insert into employees values(4, 'Alap', 2);
insert into employees values(5, 'Akhil', 2);

-------------------------------------------  Many to Many  --------------------------------------------

-- insert data for project table
insert into project values(2, 'Library Management');
insert into project values(3, 'School Management');
insert into project values(4, 'Online Booking');

-- insert data for employees table
insert into employees values(12, 'Suresh');
insert into employees values(13, 'Amit');
insert into employees values(14, 'Vijay');

-- insert data for new_p_e_join table
insert into new_p_e_join values(12, 2);
insert into new_p_e_join values(13, 2);
insert into new_p_e_join values(12, 4);
insert into new_p_e_join values(14, 3);
insert into new_p_e_join values(13, 4);

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

create table dtable (
	id int,
    name varchar(10)
);

insert into dtable values(7, "Tara");

commit;

delete from dtable where id=1;

TRUNCATE TABLE dtable;  

update dtable set name = "kalu" where id = 1;

rollback;

alter table dtable add ph varchar(5);

update dtable set ph='1234' where id=1;

insert into dtable values(7, "Tara",'12345');

alter table dtable modify ph varchar(10);

--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------

create table Student (
	sid int primary key,
    sname varchar(20),
    marks int
    );
    
select *, length(sname) from student;

insert into student values(1,'AA',90);
insert student values(2,'BB',89);
insert student values(3,'CC',97);
insert student values(4,'DD',67);
insert student values(5,'EE',89);
insert student values(6,'FFF',89);

select * from student;
select max(marks) as result from student;

select * from student where marks = (select max(marks) from student where marks < (select max(marks) from student));

select sname,marks, row_number() over(order by marks desc) as rank_ from student;
select *, rank() over(order by marks desc) as rank_ from student;
select sname,marks, dense_rank() over(order by marks desc) as rank_ from student;

----------------------------------------------------------------------------------------

create table aws_class (
	id int unique,
	name varchar(30),
    email varchar(30),
    address text,
    gender enum("M","F","O"),
    status boolean
);

select * from aws_class where gender="M";

INSERT into aws_class values("101","user a","example@xyz.com","Kolkata","M","1");
INSERT into aws_class values(102,"user b","example1@xyz.com","Bangalore","M","0");
INSERT into aws_class values(103,"user c","example2@xyz.com","Mumbai","F","1");
  
  
-- =================================================================================

Select * from books;
Select * from category;
select * from tutorials;









