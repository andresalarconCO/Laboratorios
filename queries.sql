--Encuentre el dept, title de los instructores registrados en la base de datos
select dept,title from instructor;

--Indique el nombre y programa del estudiante con student_id = 7656
Select name,program from student where student_id = 7656;

--Encuentre los nombres de todos los estudiantes que se 
--han matriculado en el curso con course_id = 837873
SELECT s.name FROM enrols e JOIN student s on e.course_id = 837873 and s.student_id = e.student_id;

--Cree una vista llamada better_students que presente los estudiantes que obtuvieron 
--las notas más altas por cada semestre entre los años 1900 y 2018
CREATE VIEW better_students as
select * from enrols where grade >= 3.5 and year BETWEEN 1900 and 2018;