create table students(
   id int primary key auto_increment,
   name varchar(100),
   email varchar(100),
   phone varchar(100)
)

drop table students

insert into students(name,email,phone) values('jamal','jamal@gmail.com','618714550'),
                                       ('ahmed','ahmed@gmail.com','615663322'),
                                       ('hamda','hamda@email.com','618877722'),
                                       ('nora','nora@hotmail.com','7622111'),
                                       ('abdi','abdi@gmail.com','777772'),
                                       ('roma','roma@gmail.com','8662222'),
                                       ('laaama','laaama@hotmail.com','99333322')

--  exercise 3
 
--  1. Show the last 2 students who registered.
 select * from students order by id asc limit 2
 
-- 2. Show only students with Gmail, sorted by name.
 select * from students where email like '%gmail%' order by name asc 
 
-- 3. Limit results to 1 row and rename the columns to `Student` and `Email Address`.
 select name as 'student name',  email as 'student email' from students limit 1
 
-- 4. Create your own variation that uses all 3: `ORDER BY`, `LIMIT`, and `AS`.
 select name as 'student name', email as 'student email' from students order by name desc limit 4