-- creacion de las tablas
create table SubContrator (
SID serial PRIMARY key,
S_Lname VARCHAR, 
S_Fname VARCHAR,
Salary integer
);

create table Builder (
BID serial PRIMARY key, 
B_Lname VARCHAR, 
B_Fname VARCHAR, 
License varchar
);
create table Neighborhood  (
NID serial PRIMARY key, 
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
HID serial PRIMARY KEY,
H_Name varchar, 
FinishDate DATE, 
Price integer, 
BID INTEGER, 
NID integer,
FOREIGN key (BID) REFERENCES builder(BID),
FOREIGN key (NID) REFERENCES Neighborhood(NID)
);

insert into subcontrator (s_fname,s_lname,salary) values
('Naren Andres','Medina Jaramillo',3050000),
('Andres Felipe','Osorio Alarcon',3040000),
('Juan David','Rios Riascos',3025000),
('Alejandro','Arenas Rodriguez',3025000),
('nombre1','Apellido ejemplo 1',3025000),
('nombre2','Apellido ejemplo 2',2025000),
  ('Holmes','Webster',2340000),
  ('Lillian','Newman',2800000),
  ('Maris','Ortega',2780000),
  ('Evelyn','Reynolds',2520000),
  ('Beau','Franks',2540000),
  ('Clinton','O''Neill',2360000),
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
(145,7,'2022-05-14'),
(142,11,'2019-10-01'),
(154,10,'2022-02-01'),
(144,9,'2021-05-22'),
(146,5,'2019-06-13'),
(163,10,'2022-05-14'),
(161,6,'2018-10-01'),
(147,6,'2019-02-14'),
(146,4,'2019-05-20'),
(136,9,'2019-06-19'),
(161,13,'2022-05-14'),
(152,3,'2018-10-10'),
(152,6,'2022-02-02'),
(139,2,'2021-05-12'),
(158,12,'2018-06-05'),
(133,2,'2022-05-14'),
(147,5,'2018-10-01'),
(138,9,'2022-02-01'),
(143,8,'2021-05-22'),
(132,5,'2018-06-19');
  
  insert into house (h_name,finishdate,price,bid,nid) values
('Nova','2022-05-31',100000000,142,142),
('Nova','2022-05-31',100000000,136,142),
('Nova','2022-05-31',100000000,151,142),
('Nova','2022-05-31',100000000,155,142),
('Nova','2022-05-31',100000000,147,142),
('El cañaduzal','2022-05-31',150000000,144,142),
('El cañaduzal','2022-05-31',150000000,138,142),
('El cañaduzal','2022-05-31',150000000,143,142),
('El cañaduzal','2022-05-31',150000000,149,142),
('El cañaduzal','2022-05-31',150000000,150,142),
  ('Imelda','2022-05-04',864257485,144,136),
('Claire','2021-05-11',367084635,154,145),
('Hamish','2021-07-11',251953690,140,144),
('Cecilia',null,600333411,162,150),
('Candice',null,569336279,147,144),
('Maggie',null,879057849,141,136),
('Keane','2021-01-07',253140623,159,139),
('Gabriel','2021-10-11',877257624,163,138),
('Nash',null,913309196,152,140),
('Halla',null,914307030,136,149);

