
-- Inserción de datos SQL --
--- Student ---
INSERT INTO student (name, program) VALUES
  	('Andres Alarcon','Programa 1'),
  	('Naren Medina','Programa 1'),
  	('Richard Peterson','Programa 3'),
  	('Travis Scott','Programa 4'),
  	('Natasha Romanoff','Programa2');

--- Instructor ---
INSERT INTO instructor (name, dept, title) VALUES
  ('Jose Zuluaga','Departamento 1','Titulo 1'),
  ('Gustavo Petro','Departamento 1','Titulo 2'),
  ('Richard Nixon','Departamento 4','Titulo 3'),
  ('Eve Juarez','Departamento 2','Titulo 4'),
  ('Brett Martin','Departamento 3','Titulo 5');
  
--- Course ---
INSERT INTO course (title, syllabus, credits) VALUES
  ('Course 1','',3),
  ('Course 2','', 4),
  ('Course 3','',2),
  ('Course 4','',2),
  ('Course 5','',4);

--- Course Offering ---
INSERT INTO course_offering (course_id, sec_id, year, semester, time, classroom) VALUES
  (837827, 1, 2021, 1, '7:00am', 1),
  (837896, 2, 2020, 2, '8:00am', 2),
  (837873, 3, 2022, 3, '2:00pm', 3),
  (837850, 4, 2022, 5, '10:00am', 7),
  (837919, 5, 2019, 3, '6:00pm', 6);

--- Enrols ---
INSERT INTO enrols (student_id, course_id, sec_id, semester, year, grade) VALUES
  (7992, 837827, 1, 1, 1900, 3.39),
  (7656, 837850, 2, 2, 1990, 3.27),
  (8160, 837873, 3, 3, 2000, 1.24),
  (7488, 837896, 4, 5, 2018, 5.00),
  (7824, 837919, 5, 3, 2020, 4.12);

--- Teaches ---
INSERT INTO teaches (course_id, sec_id, semester, year, instructor_id) VALUES
  (837896, 1, 1, 1900, 1),
  (837850, 2, 2, 1990, 2),
  (837873, 3, 3, 2000, 3),
  (837919, 4, 5, 2018, 4),
  (837873, 5, 3, 2020, 5);

--- Requires --- 
INSERT INTO requires VALUES
  (837827, 837827),
  (837850, 837827),
  (837873, 837873),
  (837896, 837873),
  (837919, 837919);
