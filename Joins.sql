create database student;
use student;


CREATE TABLE student_details(
    stu_id INT PRIMARY KEY,
    stu_name VARCHAR(20),
    stu_age INT
);


CREATE TABLE course_details(
    stu_id INT,
    course_id INT PRIMARY KEY,
    course_name VARCHAR(20)
);


insert into student_details(stu_id,stu_name,stu_age) 
values
(1,"sherin",22),
(2,"ruffia",24),
(3,"vijay",23),
(4,"dhoni",22),
(5,"yashika",20),
(6,"gowtham",23);


insert into course_details(stu_id,course_id,course_name) 
values
(1,101,"science"),
(3,102,"history"),
(1,103,"english"),
(7,105,"social"),
(6,106,"tamil");


select * from student_details;
select * from course_details;

SELECT 
    student_details.stu_id,
    stu_name,
    stu_age,
    course_id,
    course_name
FROM student_details
INNER JOIN course_details
ON student_details.stu_id = course_details.stu_id;



SELECT 
    student_details.stu_id,
    stu_name,
    stu_age,
    course_id,
    course_name
FROM student_details
LEFT JOIN course_details
ON student_details.stu_id = course_details.stu_id;


SELECT 
    student_details.stu_id,
    stu_name,
    stu_age,
    course_id,
    course_name
FROM student_details
RIGHT JOIN course_details
ON student_details.stu_id = course_details.stu_id;


SELECT 
    student_details.stu_id,
    stu_name,
    stu_age,
    course_id,
    course_name
FROM student_details
LEFT JOIN course_details
ON student_details.stu_id = course_details.stu_id
UNION
SELECT 
    student_details.stu_id,
    stu_name,
    stu_age,
    course_id,
    course_name
FROM student_details
RIGHT JOIN course_details
ON student_details.stu_id = course_details.stu_id;




-- SELECT *
-- FROM student_details
-- RIGHT JOIN course_details
-- USING (stu_id);


-- SELECT *
-- FROM student_details
-- INNER JOIN course_details
-- ON student_details.stu_id = course_details.stu_id;
