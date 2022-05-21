--- Student ID Sequence ---
CREATE SEQUENCE student_id_seq
	INCREMENT BY 168
    START WITH 7488;
    
--- Course ID Sequence ---
CREATE SEQUENCE course_id_seq
	INCREMENT BY 23
    START WITH 837827;

--- Student (instructor_id, name, dept, title) ---
CREATE TABLE student(
	student_id INTEGER DEFAULT nextval('student_id_seq'),
  	name VARCHAR NOT NULL,
  	program INTEGER,
  	PRIMARY KEY(student_id)
);

--- Instructor (instructor_id, name, dept, title) ---
CREATE TABLE instructor(
	instructor_id INTEGER,
  	name VARCHAR NOT NULL,
  	dept VARCHAR,
  	title VARCHAR,
  	PRIMARY KEY(instructor_id)
);  

--- Course (course_id, title, syllabus, credits) ---
CREATE TABLE course(
	course_id INTEGER DEFAULT nextval('course_id_seq'),
  	title VARCHAR NOT NULL,
  	sylabus VARCHAR,
  	credits SMALLINT,
  	PRIMARY KEY(course_id)
);

--- Course Offering (course_id*, sec_id, year, semester, time, classroom) ---
CREATE TABLE course_offering(
	course_id INTEGER,
  	sec_id INTEGER,
  	YEAR INTEGER,
  	semester SMALLINT,
  	time VARCHAR(100),
  	classroom INTEGER,
  	FOREIGN KEY(course_id)
  		REFERENCES course(course_id),
  	PRIMARY KEY(course_id, sec_id)  
);

--- Enrols (student_id*, course_id*, sec_id, semester, year, grade) ---
CREATE TABLE enrols(
	student_id INTEGER,
  	course_id INTEGER,
  	sec_id INTEGER,
	semester SMALLINT,
  	year INTEGER,
  	grade NUMERIC(3,2) CHECK (grade >= 1.00 AND grade <= 5.00),
  	FOREIGN KEY(student_id)
  		REFERENCES student(student_id),
  	FOREIGN KEY(course_id)
  		REFERENCES course(course_id),
  	PRIMARY KEY(student_id,course_id,sec_id)
);

--- Teaches (course_id*, sec_id, semester, year, instructor_id*) ---
CREATE TABLE teaches(
	course_id INTEGER,
  	sec_id INTEGER,
  	semester SMALLINT,
  	year INTEGER,
  	instructor_id INTEGER,
  	FOREIGN KEY(instructor_id)
  		REFERENCES instructor(instructor_id),
	FOREIGN KEY(course_id)
  		REFERENCES course(course_id),
 	PRIMARY KEY(course_id,instructor_id,sec_id)
);

--- Requires (main_course*, prerequisite*) ---
CREATE TABLE requires(
	main_course INTEGER,
  	prerequisite INTEGER,
  	FOREIGN KEY(main_course)
  		REFERENCES course(course_id),
  	FOREIGN KEY(prerequisite)
  		REFERENCES course(course_id),
  	PRIMARY KEY(main_course, prerequisite)
);

