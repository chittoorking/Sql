# to create a database use the command : "create database name_of_your_database;" as shown below
create database mysql_demo;
# Now we have one database but ideally we can have many databases created so to tell the system which database to use
#command is : "use name_of_the_database_you_want_to_use;" as shown below
use mysql_demo;
# we use command: "show databases;" to show all databases as below
show databases;
#In the next step we are creating a table 
# Use the command : "create table table_name();" to create a new table as shown below 
# inside table you need to put the attribute(column) names and the type of the attribute as shown below
#They are seperated by comma
create table student_table(
   student_id INT,
   student_name VARCHAR(100),
   course_name VARCHAR(40)

);
show tables;
# To get more about the table use the command : "describe table_name;" 
describe student_table;
# alter command as the name suggests is used to alter the attibutes of the table 
# Using this you can add or drop columns in a table
# The command to add a column  is : "alter table table_name add column_name column_type;" as below
alter table student_table add email varchar(100);
describe student_table;
# truncate command is used delete a full table 
# the command is :"truncate table table_name ;" as shown below
truncate table student_table;
show tables;
describe student_table;
#insert command is used to insert values into the table
# the syntax is as below
# " INSERT INTO table_name(attributes)
# VALUES (values );"
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(1,'ram','c1002','vamsi@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(2,'gopal','c1003','chittoor@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(3,'Vamsi','c1002','vara@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(4,'Varna','c1006','chandra@gmail.com');
describe student_table;
# To retrieve a table we use select 
# To retrieve whole table use the syntax as below
# "select * from table_name;"
select * from student_table;
#If you want to retrieve only certain columns use the columns names seperated by columns instead of * in the above command
select student_name,student_id,course_name from student_table;
# To delete or update data in a table you need to keep SQL_SAFE_UPDATES to 0 using syntax as below
# "SET SQL_SAFE_UPDATES = 0;"
# Note that SQL_SAFE_UPDATES can have 0 and 1 , 1 will safegaurd your data while 0 will allow editing
SET SQL_SAFE_UPDATES = 0;
delete from student_table;
select * from student_table;
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(1,'ram','c1002','vamsi@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(2,'gopal','c1003','chittoor@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(3,'Vamsi','c1002','vara@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(4,'Varna','c1006','chandra@gmail.com');
select * from student_table;
TRUNCATE TABLE student_table;
select * from student_table;
show tables;
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(1,'ram','c1002','vamsi@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(2,'gopal','c1003','chittoor@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(3,'Vamsi','c1002','vara@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(4,'Varna','c1006','chandra@gmail.com');
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(5,'Vaa','c1006','chandras@gmail.com');
select * from student_table;
#where clause is used to retrieve only those rows having given value as below
select * from student_table where course_name = "c1006";
# we have three operators in MySQL AND , OR , NOT 
# Operators are mostly used with where clause as below
# AND retrieves data satisfying all the given conditions
# OR retrieves data satisfying any of  the given conditions
# NOT retrieves data not satisfying the given conditions
select * from student_table where course_name = "c1006" AND student_id = 4;
select * from student_table where course_name = "c1006" OR student_id = 1;
select * from student_table where  not course_name = "c1006" AND  not student_id = 4;
select * from student_table where course_name in ("c1006","c1002") ;
select * from student_table where course_name between "c1002" and "c1006";
select * from student_table;
#Below are the examples  of pattern matching 
select * from student_table where student_name like 'v%';
select * from student_table where course_name like '%6';
INSERT INTO student_table(student_id,student_name,course_name)
VALUES(6,'Varun','c1007');
INSERT INTO student_table(student_id,student_name,course_name)
VALUES(7,'Varna','c1008');
select * from student_table ;
select * from student_table where email is null

