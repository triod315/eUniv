use EUniv

/************************************************/
/*					Level 1						*/
/************************************************/

/*Вибрати всіх користувачів*/
select * from users

/*Вибрати імена всіх студентів*/
select firstname,secondname from users
	where username IN (SELECT students.user_name from students)

/*Вибрати імена всіх викладачів, які мають ступінь Phd*/
select firstname,secondname from users
	where username IN 
	(
		SELECT teachers.user_name from teachers
			where teachers.degree='PhD'
	)

/*Вибрати імена всіх викладачів, які читають Вищу математику*/
select firstname,secondname from users
	where username IN 
	(
		SELECT teachers.user_name from teachers
			where teachers.teacher_id IN 
			(
				SELECT courses.teacher_id from courses 
					where course_name=N'Вища математика'
			)
	)