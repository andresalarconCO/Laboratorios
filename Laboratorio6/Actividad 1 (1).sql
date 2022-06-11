create SEQUENCE subID INCREMENT 1 START 1;
create SEQUENCE buildID INCREMENT 1 START 1;
create SEQUENCE neighID INCREMENT 1 START 1;
create SEQUENCE hoID INCREMENT 1 START 1;


-- creacion de las tablas
create table SubContrator (
SID integer PRIMARY key DEFAULT nextval('subID'),
S_Lname VARCHAR, 
S_Fname VARCHAR,
Salary integer
);

create table Builder (
BID integer PRIMARY key DEFAULT nextval('buildID'), 
B_Lname VARCHAR, 
B_Fname VARCHAR, 
License varchar
);
create table Neighborhood  (
NID integer PRIMARY key default nextval('neighID'), 
N_Name varchar, 
City varchar
);
create table HireInfo (
BID integer,
SID integer,
HireDate date,
PRIMARY key (BID,SID),
FOREIGN key (BID) REFERENCES Builder(BID),
FOREIGN key (SID) REFERENCES SubContrator(SID)
);
create table House (
HID integer PRIMARY KEY DEFAULT nextval('hoID'),
H_Name varchar, 
FinishDate DATE, 
Price integer, 
BID INTEGER, 
NID integer,
FOREIGN key (BID) REFERENCES builder(BID),
FOREIGN key (NID) REFERENCES Neighborhood(NID)
);

insert into subcontrator (s_fname,s_lname,salary) values
('Naren Andres','Medina Jaramillo',4000000),
('Andres Felipe','Osorio Alarcon',4050000),
('Juan David','Rios Riascos',3025000),
('Alejandro','Arenas Rodriguez',3025000),
('nombre1','Apellido ejemplo 1',3025000),
('nombre2','Apellido ejemplo 2',2025000),
  ('Holmes','Webster',2340000),
  ('Lillian','Newman',2800000),
  ('Maris','Ortega',2780000),
  ('Evelyn','Reynolds',2520000),
  ('Beau','Franks',2540000),
  ('Clinton','O''Neill',6360000),
  ('Castor','Vaughan',2690000),
  ('Colin','Lott',3459000),
  ('Cecilia','Grant',2832000),
  ('Flynn','Garner',3552000);
insert into builder (B_Lname, B_Fname, License) values
  ('Vladimir','Francesca Waters','1-883-452-5689'),
  ('Keiko','Macon Ross','1-924-784-1266'),
  ('Paul','Hiroko Porter','697-3334'),
  ('Alfreda','Felix Duke','1-168-646-7668'),
  ('Cade','Delilah Lopez','431-5354'),
  ('Quynn','Sarah Walton','526-4819'),
  ('Sydnee','Sawyer Foreman','1-618-676-5487'),
  ('Hammett','Cairo Hatfield','409-7445'),
  ('Paula','Duncan Medina','1-217-231-8679'),
  ('TaShya','Merrill Moody','180-2737'),
  ('Dalton','Malik Dunlap','1-788-424-1178'),
  ('Kirsten','Melodie Jennings','565-5494'),
  ('Eugenia','Phillip Ewing','1-965-488-8146'),
  ('Melodie','Felicia Frazier','267-6223'),
  ('Devin','Timothy Ratliff','257-4869');
  
insert into neighborhood (n_name,city) values
  ('Dosquebradas','Valle del Cauca'),
  ('Aguachica','Caldas'),
  ('Pitalito','Nariño'),
  ('Neiva','La Guajira'),
  ('Valledupar','Antioquia'),
  ('Neiva','Risaralda'),
  ('La Dorada','Distrito Capital'),
  ('Cartagena del Chairá','Norte de Santander'),
  ('Santa Cruz de Lorica','Tolima'),
  ('Puerto Nariño','Huila'),
  ('San Juan de Pasto','Cauca'),
  ('Cali','Norte de Santander'),
  ('San Vicente del Caguán','Bolívar'),
  ('Pacoa','Casanare'),
  ('Los Patios','Caquetá');
  
  insert into hireinfo (bid,sid,hiredate) values
(5,7,'2022-05-14'),
(12,11,'2019-10-01'),
(4,10,'2022-02-01'),
(14,9,'2021-05-22'),
(11,5,'2019-06-13'),
(13,10,'2022-05-14'),
(1,6,'2018-10-01'),
(7,6,'2019-02-14'),
(6,4,'2019-05-20'),
(3,9,'2019-06-19'),
(6,13,'2022-05-14'),
(5,3,'2018-10-10'),
(6,6,'2022-02-02'),
(9,2,'2021-05-12'),
(8,12,'2018-06-05'),
(15,2,'2022-05-14'),
(7,5,'2018-10-01'),
(9,9,'2022-02-01'),
(14,8,'2021-05-22'),
(12,5,'2018-06-19');
  
  insert into house (h_name,finishdate,price,bid,nid) values
('Nova','2022-05-31',100000000,2,12),
('Las consultas','2022-05-31',100000000,6,11),
('Nova','2022-05-31',100000000,15,14),
('Nova','2022-05-31',100000000,9,7),
('Nova','2022-05-31',100000000,7,1),
('El cañaduzal','2022-05-31',150000000,10,13),
('El cañaduzal','2022-05-31',150000000,11,2),
('El cañaduzal','2022-05-31',150000000,3,14),
('El cañaduzal','2022-05-31',150000000,5,12),
('El cañaduzal','2022-05-31',150000000,11,5),
 ('Imelda','2022-05-04',864257485,4,6),
('Claire','2021-05-11',367084635,8,5),
('Hamish','2021-07-11',251953690,14,1),
('Cecilia',null,600333411,1,8),
('Candice',null,569336279,7,6),
('Maggie',null,879057849,14,6),
('Keane','2021-01-07',253140623,9,9),
('Gabriel','2021-10-11',877257624,3,8),
('Nash',null,913309196,2,4),
('Halla',null,914307030,6,9);
