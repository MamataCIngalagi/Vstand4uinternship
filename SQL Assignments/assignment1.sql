use assignment1;

create table student(
sid int primary key auto_increment,
sname varchar(50),
sbranch varchar(20),
per decimal(5,2)
);
INSERT INTO student (SNAME, SBRANCH, PER) VALUES 
('Rahul', 'CSE', 78.50), 
('Ananya', 'ISE', 82.30), 
('Karthik', 'ECE', 74.25), 
('Sneha', 'ME', 69.80), 
('Arjun', 'CSE', 88.90);
select * from student;

#2.WAQTD name and branch of all the students . 
select sname, sbranch from student;

#3. WAQTD NAME , BRANCH AND PERCENTAGE FOR ALL THE STUDENTS .
select sname,sbranch, per from student;

#4.WAQTD details of all the students from students table .
select * from student;

#5.WAQTD name and id's of all the students  
select sname ,sid from student;

#6.WAQTD sname , sid , per , branch of all the students .
select sname, sid, per ,sbranch from student;
