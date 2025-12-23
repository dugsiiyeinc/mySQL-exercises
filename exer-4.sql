
create table students(
   id int primary key auto_increment,
   name varchar(100),
   email varchar(100),
   phone varchar(100),
   score double
);

insert into students(name,email,score) values('jamal','jamal@gmail.com',88.9),
    ('ahmed abdi','ahmed@gmail.com',90.2),
    ('abdi','abdi@hotmail.com',100),
    ('nor abdi','nor@gmail.com',55.7),
    ('layla','layla@email.com',88),
    ('hamda','hamda@gmail.com',78.3),
    ('ilyas','ilyas@hotmail.com',69.3),
    ('muqtar','muqtar@hotmail.com',97)

select * from students;

--  exercise 4
 
-- 1. How many students total?
 select count(*) from students
 
-- 2. What’s the highest and lowest score?
 select max(score) 'highest score', min(score) 'lowest score' from students
 
-- 3. How many students per domain?
 select SUBSTRING_INDEX(email, '@', -1) domain, count(*) total from students group by domain
 
-- 4. What is the average score of each domain group?
 select SUBSTRING_INDEX(email, '@', -1) domain, count(*) total, avg(score) 'average score' from students group by domain