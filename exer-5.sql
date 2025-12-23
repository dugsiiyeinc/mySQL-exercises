-- exercise 5

-- 1. Create a relational schema (students, courses, enrollments)
create table students(
   id int primary key auto_increment,
   name varchar(100),
   email varchar(100)
);

create table courses(
    id int primary key auto_increment,
    title varchar(100)
)

create table enrollments(

   id int primary key auto_increment,
   student_id int,
   course_id int,
   
   foreign key (student_id) references students(id),
   foreign key (course_id) references courses(id)
)

-- 2. Insert students, courses, and enrollments
insert into students(name,email) values('jamal','jamal@gmail.com'),
    ('ahmed abdi','ahmed@gmail.com'),
    ('abdi','abdi@hotmail.com'),
    ('nor abdi','nor@gmail.com'),
    ('layla','layla@email.com'),
    ('hamda','hamda@gmail.com'),
    ('ilyas','ilyas@hotmail.com'),
    ('muqtar','muqtar@hotmail.com')

insert into courses (title)
values
('Web Development Basics'),
('Advanced JavaScript'),
('React Fundamentals'),
('Node.js & Express'),
('Full Stack Development'),
('Database Design'),
('Python Programming'),
('Data Structures & Algorithms'),
('UI/UX Design'),
('Git & GitHub');

insert into enrollments(student_id,course_id)
values(3,9),
      (1,4),
      (2,8),
      (5,6),
      (8,7)

-- 3. Use INNER JOIN to find who is enrolled
select students.name, students.email, courses.title from enrollments
inner join students on student_id = students.id
inner join courses on course_id = courses.id

-- 4. Use LEFT JOIN to list all students + their courses (NULL if none)
select courses.title from students 
left join enrollments on students.id = enrollments.student_id
left join courses on course_id=courses.id

-- 5. BONUS: Count how many students per course using `GROUP BY`
select courses.title, count(enrollments.student_id) 'Total students' from students 
left join enrollments on students.id = enrollments.student_id
left join courses on course_id=courses.id
group by courses.title