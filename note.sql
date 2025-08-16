
--? MySQL Commands
** this is for open mysql server " mysql -u root -t " **

--? This is for showing dataBases 
1.show databases;

--? this is for creating database 
2.create database [dbname];
 --tcreate database students ;

--? This is for delete data bases
3.drop database [dbname];
-- drop database myFirstBase;

--? This is use and switch databases 
4.use [dbname];
-- use myFirstBase ;

--? create table 
5.create table [tableName](col1 coltype(size) extra........);
-- create table students( id int(11)primary key ,name varchar(100) not null , city varchar(500) not null );

--? show tables
6.show tables;

--? to sea all table keys means if you want to describe the table 
7.desc [tableName];
-- desc students;

--? if you want to change the table or edit the table 
--* table ALTER
--* add column
8.alter table [tableName] add [column_name] datatype ;
-- alter table students ADD phone varchar(10);

--? Modify Table 
9.alter table [tableName] Modify [column_name][new_dataType];
-- alter table students modify phone int(10) not null;

--?  Rename column 
10.alter table [tableName] Rename column [oldName] to [newname];
-- alter table RatanBase RENAME COLUMN Phone to student phone ;

--? Delete column from Table
11.alter table [tableName] drop column [column_name];
--alter table RatanBase DROP COLUMN city;

-- insert data into Table 
insert into [tableName] (cols )values (values );
-- insert into RatanBase (id,name,studentPhone) values (12 , "Raju", "8609845390");

--* instead of this if you know the perfect order then you also do like this 

-- !insert into studentInfo values ( 04 , "kanika Hasda ","Kumar Pur");

-- ? see the values  in the table 
select * from [tablename]; --{ Here * for selecting rows and columns  }
-- select * from RatanBase;



--? you can also insert many  values at a time
insert into studentInfo ( id , name , city ) values ( ), ( ), ( );

-- insert into studentInfo (id , name , city ) values ( 6 , "Rinki" , "katihar"),(7,"Rajkumar tiwari ","Asam"),(8,"kailash Hansda","Kumar Pur ");


--? Update query 
Update [tableName] set col1 = values, col2 = values where id = 12 ;
--update studentInfo set name = "Rajjjiiiya ",city = "Kalighat" where id = 6 ;


-- Delete rows
delete from [tableName] where id = 10 ;--( Here posible multiole condition )
--  delete from  studentInfo where id = 9 ;

-- if want to show selected column 
select name , city from studentInfo ;


select name as student_Name , city as city_name from studentInfo;


-- +------------------+------------+
-- | student_Name     | city_name  |. -- ? only for showing purpose 
-- +------------------+------------+
-- | Raju             | Malda      |
-- | Ratan            | Malda      |
-- | Rai              | Kolkata    |
-- | Rkeash HAlder    | Kolaibari  |
-- | kanika Hasda     | Kumar Pur  |
-- | Rajjjiiiya       | Kalighat   |
-- | Rajkumar tiwari  | Asam       |
-- | kailash Hansda   | Kumar Pur  |
-- +------------------+------------+



--! another way 

 select name "NAME" , city "CITY" from studentInfo;
+------------------+------------+
| NAME             | CITY       |
+------------------+------------+
| Raju             | Malda      |
| Ratan            | Malda      |
| Rai              | Kolkata    |
| Rkeash HAlder    | Kolaibari  |
| kanika Hasda     | Kumar Pur  |
| Rajjjiiiya       | Kalighat   |
| Rajkumar tiwari  | Asam       |
| kailash Hansda   | Kumar Pur  |
+------------------+------------+


--!
-- ? 
select * from StudentInfo WHERE id = 5;
+----+---------------+-----------+
| id | name          | city      |
+----+---------------+-----------+
|  5 | kanika Hasda  | Kumar Pur |
+----+---------------+-----------+



 select * from StudentInfo  WHERE name = "Ratan" and city = "Malda";
+----+-------+-------+
| id | name  | city  |
+----+-------+-------+
|  2 | Ratan | Malda |
+----+-------+-------+


select * from StudentInfo WHERE name = "Raju" OR city = "Malda";
+----+-------+-------+
| id | name  | city  |
+----+-------+-------+
|  1 | Raju  | Malda |
|  2 | Ratan | Malda |
+----+-------+-------+



select * from StudentInfo WHERE NOT city = "Malda";
+----+------------------+------------+
| id | name             | city       |
+----+------------------+------------+
|  3 | Rai              | Kolkata    |
|  4 | Rkeash HAlder    | Kolaibari  |
|  5 | kanika Hasda     | Kumar Pur  |
|  6 | Rajjjiiiya       | Kalighat   |
|  7 | Rajkumar tiwari  | Asam       |
|  8 | kailash Hansda   | Kumar Pur  |
+----+------------------+------------+


select * from StudentInfo ORDER BY name ;  --? Order wise sorting 
select * from StudentInfo ORDER BY name desc;  --* Sorting by decending Order 
+----+------------------+------------+
| id | name             | city       |
+----+------------------+------------+
|  8 | kailash Hansda   | Kumar Pur  |
|  5 | kanika Hasda     | Kumar Pur  |
|  3 | Rai              | Kolkata    |
|  6 | Rajjjiiiya       | Kalighat   |
|  7 | Rajkumar tiwari  | Asam       |
|  1 | Raju             | Malda      |
|  2 | Ratan            | Malda      |
|  4 | Rkeash HAlder    | Kolaibari  |
+----+------------------+------------+


--* If name same then sort by city 

select * from StudentInfo ORDER BY name desc , city desc;
+----+------------------+------------+
| id | name             | city       |
+----+------------------+------------+
|  4 | Rkeash HAlder    | Kolaibari  |
|  2 | Ratan            | Malda      |
|  1 | Raju             | Malda      |
|  9 | Raju             | ABC        |
|  7 | Rajkumar tiwari  | Asam       |
|  6 | Rajjjiiiya       | Kalighat   |
|  3 | Rai              | Kolkata    |
|  5 | kanika Hasda     | Kumar Pur  |
|  8 | kailash Hansda   | Kumar Pur  |
+----+------------------+------------+

select * from StudentInfo limit 3 ;--? Limit the number of rows returned
+----+-------+---------+
| id | name  | city    |
+----+-------+---------+
|  1 | Raju  | Malda   |
|  2 | Ratan | Malda   |
|  3 | Rai   | Kolkata |
+----+-------+---------+

select * from StudentInfo ORDER BY city  limit 4 ; --? Limit the number of rows returned after sorting by city
+----+------------------+-----------+
| id | name             | city      |
+----+------------------+-----------+
|  9 | Raju             | ABC       |
|  7 | Rajkumar tiwari  | Asam      |
|  6 | Rajjjiiiya       | Kalighat  |
|  4 | Rkeash HAlder    | Kolaibari |
+----+------------------+-----------+


select * from StudentInfo  limit 4 offset 2 ; --? Skip the first 2 rows and return the next 4 rows
+----+---------------+-----------+
| id | name          | city      |
+----+---------------+-----------+
|  3 | Rai           | Kolkata   |
|  4 | Rkeash HAlder | Kolaibari |
|  5 | kanika Hasda  | Kumar Pur |
|  6 | Rajjjiiiya    | Kalighat  |
+----+---------------+-----------+


select * from StudentInfo ORDER BY id desc  limit 4 offset 2 ; --? Skip the first 2 rows after sorting by id in descending order and return the next 4 rows
+----+------------------+-----------+
| id | name             | city      |
+----+------------------+-----------+
|  7 | Rajkumar tiwari  | Asam      |
|  6 | Rajjjiiiya       | Kalighat  |
|  5 | kanika Hasda     | Kumar Pur |
|  4 | Rkeash HAlder    | Kolaibari |
+----+------------------+-----------+


--? FUnctions in SQL
1. count 
2. sum
3. avg
4. min
5. max  

--? Count function
select count(*) from StudentInfo; --? Count all rows in the table

+----------+
| COUNT(*) |
+----------+
|        9 |
+----------+

select COUNT(id) "ID count " from StudentInfo; --? Count specific column (id) in the table and rename the column in the output as "ID count" 
+-----------+
| ID count  |
+-----------+
|         9 |
+-----------+


select COUNT(id) "ID count " from StudentInfo where city = "Malda"; --? Count specific column (id) in the table where city is "Malda" and rename the column in the output as "ID count"
+-----------+
| ID count  |
+-----------+
|         2 |
+-----------+


select SUM(fees) from StudentInfo; --? Sum function to calculate the total of the fees column
+-----------+
| SUM(fees) |
+-----------+
|     45000 |
+-----------+

select AVG (fees) from StudentInfo ; --? Average function to calculate the average of the fees column
+------------+
| AVG (fees) |
+------------+
|       5000 |
+------------+

select MAX(fees) from StudentInfo ;--? Maximum function to find the maximum value in the fees column
+-----------+
| MAX(fees) |
+-----------+
| 9000      |
+-----------+


select MIN(fees) from StudentInfo ; --? Minimum function to find the minimum value in the fees column
+-----------+
| MIN(fees) |
+-----------+
| 1000      |
+-----------+