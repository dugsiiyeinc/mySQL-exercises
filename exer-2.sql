
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
 
--   1 Use AND to select students who are Gmail users with ID > 2
 select * from students where email like '%gmail%' and id > 2
 
--   2 Use OR to select students named ahmed or hamda.
 select * from students where name = 'ahmed' or name = 'hamda'
 
--   3 Use parentheses to fix this query AND and OR problems:
 select * from students where ( name = 'ahmed' or name = 'hamda' ) and id < 3
 
--   4 rite your own query combining LIKE, AND, and OR.
 select * from students where (email like '%gmail%' or email like '%email%') and id > 3
 
--   5 Use SELECT, then turn it into a safe UPDATE or DELETE.
 delete from students where (email like '%gmail%' or email like '%email%') and id > 3
 
 update students set name = 'jamal' where ( name = 'ahmed' or name = 'hamda' ) and id < 3
 