delete from programs

/*fill programs*/
INSERT INTO programs (program_name,credit_points,program_degree) VALUES (N'Компютера інженерія',1500,N'бакалавр');
INSERT INTO programs (program_name,credit_points,program_degree) VALUES (N'Інформаційна безпека телекомунікаційних систем',1500,N'магістр');
INSERT INTO programs (program_name,credit_points,program_degree) VALUES (N'Прикладна фізика',800,N'бакалавр');


delete from users
/*fill users*/
INSERT INTO users (username,passwd,email,firstname,secondname,birthday) VALUES ('triod315','passwd','triod315@gmail.com','Main','Admin','2000-01-01')
INSERT INTO users (username,passwd,email,firstname,secondname,birthday) VALUES ('stud1','passwd','stud1@gmail.com',N'Студент','1','1999-01-01')
INSERT INTO users (username,passwd,email,firstname,secondname,birthday) VALUES ('stud2','passwd','stud2@gmail.com',N'Студент','2','1999-01-02')
INSERT INTO users (username,passwd,email,firstname,secondname,birthday) VALUES ('stud3','passwd','stud3@gmail.com',N'Студент','3','1999-01-03')
INSERT INTO users (username,passwd,email,firstname,secondname,birthday) VALUES ('teacher1','passwd','teacher1@gmail.com',N'Викладач','1','1999-11-01')
INSERT INTO users (username,passwd,email,firstname,secondname,birthday) VALUES ('teacher2','passwd','teacher2@gmail.com',N'Викладач','2','1999-11-02')
INSERT INTO users (username,passwd,email,firstname,secondname,birthday) VALUES ('teacher3','passwd','teacher3@gmail.com',N'Викладач','3','1999-11-03')

/*fill admins*/
INSERT INTO admins (department,user_name) VALUES (N'Адміністрація','triod315')

/*fill students*/
INSERT INTO students (user_name,program_id,year_of_studing) VALUES ('stud1',1,1)
INSERT INTO students (user_name,program_id,year_of_studing) VALUES ('stud2',1,1)
INSERT INTO students (user_name,program_id,year_of_studing) VALUES ('stud3',2,2)

SELECT * FROM students

/*fill teachers*/
INSERT INTO teachers (user_name,chair,degree) VALUES ('teacher1',N'Компютерної інженерії','PhD')
INSERT INTO teachers (user_name,chair,degree) VALUES ('teacher2',N'Компютерної інженерії','PhD')
INSERT INTO teachers (user_name,chair,degree) VALUES ('teacher3',N'Математики','PhD')
SELECT * FROM teachers


delete from courses
/*fill courses*/
INSERT INTO courses (course_name,course_type,teacher_id,program_id) VALUES (N'Програмування','N',1,1)
INSERT INTO courses (course_name,course_type,teacher_id,program_id) VALUES (N'UNIX','N',1,1)
INSERT INTO courses (course_name,course_type,teacher_id,program_id) VALUES (N'Вища математика','O',1,1)
INSERT INTO courses (course_name,course_type,teacher_id,program_id) VALUES (N'Вища математика','N',3,2)

SELECT * FROM courses


delete from test_attemts
/*fill test attemts*/
INSERT INTO test_attemts (test_date,test_name,test_type,mark,grade,student_id,course_id) VALUES ('2019-04-14',N'Іспит','final',100,N'5',1,9)
INSERT INTO test_attemts (test_date,test_name,test_type,mark,grade,student_id,course_id) VALUES ('2019-04-14',N'Іспит','final',99,N'5',2,9)
SELECT * FROM test_attemts



/****************/
select * from users
where username='triod315'