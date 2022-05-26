--Al agregar una tupla en enrolls, en caso de que la nota sea negativa, cero (0.0) o mayor de 5.00 se 
--debe generar una excepción indicando que el valor a guardar en grade es incorrecto o invalido.
CREATE or replace FUNCTION mensaje_error () RETURNS TRIGGER AS
$BODY$
BEGIN
  RAISE EXCEPTION 'La nota es incorrecta';
END;
$BODY$ LANGUAGE 'plpgsql';

create or replace TRIGGER calificacion_incorrecta before INSERT on enrols
for each row
when (New.grade < 1.00 or New.grade >5.00) EXECUTE FUNCTION mensaje_error();


-- notificar cambios cuando se ingrese un nuevo valor a la nota 
CREATE or replace FUNCTION notificar_cambio() RETURNS TRIGGER AS
$BODY$
BEGIN
  raise notice 'Se ha modificado con exito';
  return new;
END;
$BODY$ LANGUAGE 'plpgsql';

create or replace trigger notificacion before update of grade on enrols for each row when 
(New.grade != Old.grade) EXECUTe FUNCTION notificar_cambio();
-- si la nota a actualizar tiene un valor inferior a 1 o mayor a 5 manda un errorrequires

CREATE or replace FUNCTION nota_no_valida () RETURNS TRIGGER AS
$BODY$
BEGIN
  RAISE EXCEPTION 'La nota ingresada no es valida';
END;
$BODY$ LANGUAGE 'plpgsql';

create or replace TRIGGER calificacion_incorrecta before update of grade on enrols
for each row
when (New.grade < 1.00 or New.grade >5.00) EXECUTE FUNCTION nota_no_valida();

-- si la nota es igual a la que ya esta en la base de datos muestra un mensaje

CREATE or replace FUNCTION nota_igual () RETURNS TRIGGER AS
$BODY$
BEGIN
  RAISE EXCEPTION 'Tienen el mismo valor no hay cambio';
END;
$BODY$ LANGUAGE 'plpgsql';

create or replace trigger iguales before update of grade on enrols for each row 
when (New.grade = Old.grade) EXECUTE FUNCTION nota_igual();

--Añade teaches ingresando solo el instructor_id y el course_id teninendo en cuenta que ambo estan en la baserequires
-- de datos

CREATE or replace PROCEDURE create_teaches(instructorID integer,course integer) as 
$naren$
BEGIN

INSERT into teaches (year,semester,sec_id,course_id,instructor_id)
SELECT year,semester,sec_id,course_id,instructor_id from course_offering co join instructor 
on course = co.course_id and instructorID = instructor_id;

COMMIT;
END;
$naren$ LANGUAGE 'plpgsql';
