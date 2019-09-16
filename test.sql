drop database if exists class;  
create database class;  
use class ;  

drop table if exists Teacher ;  
Create table Teacher( 
teacher_id int, 
f_name varchar(20), 
l_name varchar(20), 
primary key (teacher_id) 
); 
  desc Teacher;
insert into Teacher values (2001,'john','doe'); 
insert into Teacher values (2002,'jane','Dane'); 
insert into Teacher values (2003,'Shivi','Prabhakar'); 
insert into Teacher values (2004,'Rony','Rincon'); 
insert into Teacher values (2005,'Anthony','Pryor'); 
insert into Teacher values (2006,'Elywood','Lyken '); 
insert into Teacher values (2007,'Dexter','Dexter'); 
insert into Teacher values (2008,'Mad ','Dexter'); 
 select * from Teacher order by(teacher_id) desc;  
 select max(teacher_id) from Teacher;  
  select min(teacher_id) from Teacher;
select * from Teacher;
  
drop table if exists Subjects ;  
Create table Subjects( 
subject_id int, 
title varchar(30) not null, 
primary key (subject_id) 
); 
 desc Subjects; 
insert into Subjects values (1001,'Mathematics'); 
insert into Subjects values (1002,'English'); 
insert into Subjects values (1003,'SQL'); 
insert into Subjects values (1004,'JAVA Programming'); 
insert into Subjects values (1005,'Automation testing'); 
select * from Subjects order by(subject_id) desc;
select subject_id as ID from Subjects;  
select title as title from Subjects;   
select * from Subjects;

    
drop table if exists Groups1 ;   
Create table Groups1( 
group_id int, 
name1 varchar(30) not null, 
primary key (group_id) 
) ;
desc Groups1;
insert into Groups1 values (3001,'Coders') ;
insert into Groups1 values (3002,'Literature'); 
insert into Groups1 values (3003,'Physical sciences'); 
select * from Groups1 order by(group_id) desc;  
select * from Groups1;
 
drop table if exists Subject_Teacher ;  
Create table Subject_Teacher( 
subject_id int, 
teacher_id int, 
group_id int, 
foreign key (teacher_id) references Teacher(teacher_id), 
foreign key (group_id) references Groups1(group_id) 
); 
  desc Subject_Teacher;
insert into Subject_Teacher values (1001,2001,3003); 
insert into Subject_Teacher values (1001,2002,3002); 
insert into Subject_Teacher values (1003,2003,3001); 
insert into Subject_Teacher values (1004,2003,3001); 
insert into Subject_Teacher values (1005,2003,3001); 
insert into Subject_Teacher values (1004,2004,3001);
insert into Subject_Teacher values (1005,2004,3001); 
insert into Subject_Teacher values (1002,2005,3002);
insert into Subject_Teacher values (1002,2002,3002); 
insert into Subject_Teacher values (1001,2008,3002); 
select * from Subject_Teacher order by(subject_id) desc; 
select teacher_id,subject_id from Subject_Teacher where group_id=3001 and teacher_id=1001;
 select * from Subject_Teacher; 
  
drop table if exists Students ;  
Create table Students( 
student_id int, 
f_name varchar(30), 
l_name varchar(30), 
group_id int, 
foreign key (group_id) references Groups1(group_id) 
); 
  desc Students;
insert into Students values (4001,'Damien','dex',3001); 
insert into Students values (4002,'Samantha','Stuart',3001); 
insert into Students values (4002,'Samantha','Stuart',3002); 
insert into Students values (4002,'Samantha','Stuart',3002); 
insert into Students values (4003,'Jamaal','Ahmed',3003); 
select * from Students order by(student_id) desc; 
select f_name,l_name from Students where group_id=3001 or group_id=3002; 
select * from Students where f_name like 'S%'and f_name like '%a'; 
select distinct f_name from Students order by(student_id) desc; 
select * from Students; 
  
drop table if exists Marks ;    
Create table Marks( 
mark_id int, 
student_id int, 
subject_id int, 
date1 date, 
mark int not null, 
primary key (mark_id), 
foreign key (subject_id) references Subjects(subject_id) 
); 
desc Marks;
insert into Marks values (5001,4002,1002,'2019-11-11',80); 
insert into Marks values (5002,4003,1004,'2000-01-21',65); 
insert into Marks values (5003,4001,1005,'2018-05-12',40);
select * from Marks order by(mark_id) desc;
select sum(student_id) from Marks;  
select count(student_id) from Marks;  
select avg(student_id) from Marks;    
select * from Marks; 
