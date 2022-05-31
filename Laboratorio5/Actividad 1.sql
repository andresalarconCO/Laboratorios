-- Ejercicio 1
create TABLE tabla1(
a varchar,
B varchar,
PRIMARY key (A)
);

create table tabla3(
c varchar,
D integer,
PRIMARY key (C,D),
E varchar
);

create table tabla2(
A varchar,
C varchar,
D integer,
PRIMARY key (A,c,D),
FOREIGN key (A) REFERENCES tabla1(A),
FOREIGN key (C,D) REFERENCES tabla3(C,D)
);

-- fin ejercicio 1
-- Ejercicio 2 -- insertar datos

insert into tabla1 (a,b) values 
('a','b'),
('aa','bb');

insert into tabla3 (c,d,e) values
('x',1,'w'),
('x',2,'z');
insert into tabla2(A,C,D) values
('a','x',1),
('a','x',2);

