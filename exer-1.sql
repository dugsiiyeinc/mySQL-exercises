
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

 select * from students
 
--   1 find all students whose name ends with 'd'
 select * from students where name like '%d'
 
--   2 find all students with gmail addresses
 select * from students where email like '%gmail%'
 
--   3 find all students whose email contains the letter 'o'
 select * from students where name like '%o%'
 
--   4 find all students whose names are exactly 4 letters long
 select * from students where name like '%____a%'
 
--   5 find all students whose phone numbers include 8
 select * from students where phone like '%8%'
 
 