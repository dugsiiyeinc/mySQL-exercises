
-- 1. Create a sample table
create table students(
   id int primary key auto_increment,
   name varchar(100),
   email varchar(100)
);

-- 2. Insert 1000+ rows (manually, generator, or script)
INSERT INTO students (name, email)
SELECT
  CONCAT('student', t1.n + t2.n * 10 + t3.n * 100),
  CONCAT('student', t1.n + t2.n * 10 + t3.n * 100, '@example.com')
FROM
  (SELECT 0 n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
   UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) t1
CROSS JOIN
  (SELECT 0 n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
   UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) t2
CROSS JOIN
  (SELECT 0 n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
   UNION ALL SELECT 5 UNION ALL 

   
 SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) t3;

--  3. Measuring it without index using `EXPLAIN`
 explain select * students s nts where email like 'student6%'
 
-- 4. Measuring it with index using `EXPLAIN`
create index index_email on students(email);

explain select * from students where email like 'student6%'

-- 5.summary of what changed and why
-- before using index mySQL had to scan all rows in order to find exact match which makes performance worse
-- while after using index mySQL is not forced to scan all rows it just goes to the section of the exact match and gets you
