/* Run it on day X*/
/*
use EUniv
drop table courses
drop table teachers
drop table students
drop table admins

drop table test_attemts
drop table users
drop table programs
*/
/******************/

/*Creating tables*/
CREATE TABLE users(
	/*user_id INT PRIMARY KEY IDENTITY,*/
	username VARCHAR(255) PRIMARY KEY,
	email VARCHAR(50),
	passwd NVARCHAR(128),
	firstname NVARCHAR (45),
	secondname NVARCHAR(45),
	birthday DATE
)

CREATE TABLE programs(
	program_id INT PRIMARY KEY IDENTITY,
	program_name NVARCHAR(MAX),
	credit_points INT
)

ALTER TABLE programs
	ADD program_degree NVARCHAR(45);

CREATE TABLE students(
	student_id INT PRIMARY KEY IDENTITY,
	user_name VARCHAR(255) UNIQUE NOT NULL,
	program_id INT,
	FOREIGN KEY (program_id) REFERENCES programs (program_id) ON DELETE CASCADE,
	FOREIGN KEY (user_name) REFERENCES users (username) ON DELETE CASCADE

)

ALTER TABLE students
	ADD year_of_studing INT;

CREATE TABLE teachers(
	teacher_id INT PRIMARY KEY IDENTITY,
	chair NVARCHAR(MAX),
	degree NVARCHAR(MAX),
	user_name VARCHAR(255) UNIQUE NOT NULL,
	FOREIGN KEY (user_name) REFERENCES users (username) ON DELETE CASCADE
)

CREATE TABLE admins(
	admin_id INT PRIMARY KEY IDENTITY,
	department NVARCHAR(MAX),
	user_name VARCHAR(255) UNIQUE NOT NULL,
	FOREIGN KEY (user_name) REFERENCES users (username) ON DELETE CASCADE
)

CREATE TABLE courses(
	cousre_id INT PRIMARY KEY IDENTITY,
	course_name NVARCHAR(55),
	course_type NVARCHAR(55),
	program_id INT,
	FOREIGN KEY (program_id) REFERENCES programs(program_id) ON DELETE CASCADE,
	teacher_id INT,
	FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id) ON DELETE CASCADE

)

CREATE TABLE test_attemts(
	test_attemt	INT PRIMARY KEY IDENTITY,
	test_date DATE,
	test_name NVARCHAR(MAX),
	test_type NVARCHAR(45),
	mark INT CHECK (mark >= 0 AND mark <= 100),
	grade VARCHAR(45),
	student_id INT,
	course_id INT,
	FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
	FOREIGN KEY (course_id) REFERENCES courses(cousre_id)

)