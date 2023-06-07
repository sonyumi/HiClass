SELECT * FROM STUDENT;

UPDATE STUDENT 
SET YEAR=YEAR-1

UPDATE PROFESSOR 
SET POSITION='교수',dept_id='923'
WHERE name='고희석'

SELECT * FROM PROFESSOR

DELETE FROM PROFESSOR
WHERE name='김태석'

SELECT * FROM DEPARTMENT

SELECT *
FROM DEPARTMENT , STUDENT
WHERE department.DEPT_ID = student.DEPT_ID 

SELECT
	dept_name,
	name
FROM
	DEPARTMENT,
	STUDENT
WHERE
	DEPARTMENT.DEPT_ID = STUDENT.DEPT_ID
	
	SELECT address
	FROM STUDENT
	
	SELECT DISTINCT address
	FROM STUDENT
	
	SELECT *
	FROM PROFESSOR
	
	SELECT name, year_emp,2023-year_emp
	FROM PROFESSOR
	
	SELECT student.NAME ,student.STU_ID ,department.DEPT_NAME 
	FROM STUDENT,DEPARTMENT
	WHERE student.DEPT_ID = department.DEPT_ID
	
	SELECT student.STU_ID 
	FROM student, DEPARTMENT
	WHERE student.DEPT_ID = department.DEPT_ID AND student.YEAR = 3 AND department.DEPT_NAME ='컴퓨터공학과'

	UPDATE STUDENT 
	SET YEAR=YEAR-1
	
	SELECT name,stu_id
	FROM STUDENT
	WHERE YEAR = 3 OR YEAR = 4
	ORDER BY name, stu_id
	
	SELECT name,stu_id
	FROM STUDENT
	WHERE YEAR = 3 OR YEAR = 4
	ORDER BY name DESC, stu_id
	
	SELECT s.name, d.dept_name
	FROM STUDENT s ,DEPARTMENT d 
	WHERE s.DEPT_ID  = d.DEPT_ID 
	
	SELECT address -- <-이것은 주석처리 입니다
	FROM STUDENT
	WHERE name='김광식'
	
	SELECT name,address
	FROM student
	WHERE address='서울'
	
	SELECT *
	FROM student s1, STUDENT s2
	WHERE s1.NAME = s2.NAME 
	AND s1.name = '김광식'
	
	SELECT name 이름, POSITION 직위, 2023-year_emp 재직연수
	FROM PROFESSOR
	
	SELECT *
	FROM STUDENT s
	WHERE name LIKE '김%'
	
	SELECT s.name,s.year
	FROM student s
	WHERE s.RESIDENT_ID LIKE '%*2%' OR s.RESIDENT_ID LIKE '%*4%' 
	
	SELECT *
	FROM student s
	
	SELECT name FROM STUDENT
	UNION
	SELECT name FROM PROFESSOR
	
	SELECT dept_id FROM STUDENT s 
	UNION ALL
	SELECT dept_id FROM PROFESSOR p 
	ORDER BY dept_id

	SELECT * FROM TAKES
	
	SELECT *
	FROM COURSE c 
	
	SELECT * FROM TAKES
	
	drop table takes;

	create table takes 
	(
		stu_id 		varchar2(10) ,
		class_id 		varchar2(10),
		grade 		char(5),
		constraint 	pk_takes 		primary key(stu_id, class_id),
		constraint 	fk_takes1 		foreign key(stu_id) 
				references 	student(stu_id),
		constraint 	fk_takes2 		foreign key(class_id) 
				references 	class(class_id)
	);

SELECT * FROM TAKES

SELECT s.stu_id
FROM student s, DEPARTMENT d ,TAKES t 
WHERE s.DEPT_ID =d.DEPT_ID AND t.STU_ID =s.STU_ID AND dept_name='컴퓨터공학과' AND grade = 'A+'

SELECT stu_id
FROM student s,DEPARTMENT d 
WHERE s.DEPT_ID=d.DEPT_ID AND dept_name='산업공학과'
MINUS 
SELECT stu_id
FROM TAKES t 
WHERE grade!='A+'

SELECT s.STU_ID
FROM STUDENT s , DEPARTMENT d ,TAKES t 
WHERE s.DEPT_ID = d.DEPT_ID 
AND s.stu_id = t.STU_ID 
AND dept_name = '산업공학과'
AND grade = 'A+'

SELECT * FROM takes

SELECT * FROM student

SELECT s.dept_id, s.stu_id
FROM student s

select stu_id from student s, department d
where s.dept_id = d.dept_id and dept_name='산업공학과'
minus
select stu_id from takes
where grade != 'A+'

--외부조인
SELECT title, credit, YEAR, semester
FROM course, CLASS
WHERE course.COURSE_ID=class.COURSE_ID 

--왼쪽 외부조인 (공통된 쿼리문)
SELECT title, credit, YEAR, semester
FROM course LEFT OUTER JOIN CLASS
USING (course_id)

SELECT * FROM class;

--왼쪽 외부조인 (오라클 쿼리문)
SELECT title, credit, YEAR, semester
FROM course, CLASS
WHERE course.course_id = class.course_id (+)

--오른쪽 외부 조인 (공통된 쿼리문)
SELECT title, credit, YEAR, semester
FROM course RIGHT OUTER JOIN CLASS
USING (course_id)

--오른쪽 외부 조인 (오라클 쿼리문)
SELECT title, credit, YEAR, semester
FROM course, CLASS
WHERE course.COURSE_ID (+) = class.COURSE_ID

--완전 외부 조인 (full outer join)
SELECT *
FROM course FULL OUTER JOIN CLASS
USING (course_id)
ORDER BY course_id

SELECT *
FROM course

SELECT *
FROM class
ORDER BY course_id

SELECT *
FROM course;

SELECT *
FROM CLASS;

SELECT title, credit, YEAR, semester
FROM course,CLASS
union
--

SELECT * FROM EMP
ORDER BY 6 desc
	