--Autor Erick Octavio Nolasco Machuca
--01/10/2019	

--Usar la base de datos
use TBD2019_GA;
--Insertar registro completo
Insert into Alumnos values('17400950','GORETY','BAÑUELOS','ORTIZ',20);

insert into Alumnos values('17401022', 'Fernando', 'Miramontes', 'Alvarez', 20);
insert into Alumnos values('17400952','Carlos Alberto', 'Becerra','Enriquez',20);
insert into Alumnos values('17401086','Alexis','Torres','Acosta',20);
insert into Alumnos values('17401068','Alison Citlalic','Rodriguez','Solis',20);
insert into Alumnos values('17401019','Luis Daniel','Mendez','Castellanos',20);
insert into Alumnos values('17401357','Martin Alejandro','Reinoso','Sachez',24);
insert into Alumnos values('17400981', 'Jose Miguel', 'Garcia', 'Acevedo', 21);
insert into Alumnos values('17401024','Maria Elena','Montañez','Herrera',20);
insert into Alumnos values('17401091','Joaquin Mario','Velasco','Ortega',20);
insert into Alumnos values('17401030','Luis Carlos','Nolasco','Murgo',22);
insert into Alumnos values('17401083','Jose Salvador','Santoyo','Gonzalez',20);
insert into Alumnos values('17401014','Victor Manuel','Martinez','Valenzuela',20);
insert into Alumnos values('17400999','Emmanuel Josafat','Jimenez','Perez',20);
insert into Alumnos values('17400944','Esmeralda Anahi','Arevalo','Valenzuela',20);
insert into Alumnos values('17400971','Ramon Antonio','Estrada','Torres',20);
insert into Alumnos values('17400959','Ian Gerardo','Calderon','Valdez',20);
insert into Alumnos values('17400970', 'PAULINA GUADALUPE', 'DIAZ', 'ZAVALA', 20)
insert into Alumnos values('17400962','Fernanda Lizeth', 'Casillas','Sanchez',20);
insert into Alumnos values('16401013','Jorge Jorge','Varela','Garcia',24)
insert into Alumnos values('17400988','Brayan Adan', 'Gutierrez','Rodriguez',20);
insert into Alumnos values('17400993','Agustin de Jesus', 'Hernandez','Montero',21);
insert into Alumnos values('17401056','Alfonso Aldair','Rangel','Cantabrana','20');
insert into Alumnos values('17401043','ABRIL LIBERTAD','PEREZ','RIOS',20);
insert into Alumnos values('17401336','Jose Gonzalo','Zarate','Rivera',20);
insert into Alumnos values('17400985','Blanca Estefani','Ramirez','Barajas',21);
insert into Alumnos values('16400887','Daniel Alejandro','Ayala','Ramirez',21);
insert into Alumnos values('17401333', 'Jorge', 'Zavalza', 'Arroyo', 20);
insert into Alumnos values('17400997','Martha Elizabeth','Inda','Olvera',20);
insert into Alumnos values('15401058','Jesus Eduardo','Serrano','Delgado',22);
insert into Alumnos values('17400950','Gorety Nataly','Bañuelos','Ortiz',20);
insert into Alumnos values('17401066','Keiry Yoseli','Rodríguez','González',20);
insert into Alumnos values('17401335','Andrés Antonio','Zurita','Bizarrón',20);
insert into Alumnos values('17401029','Erick Octavio','Nolasco','Machuca',20);
insert into Alumnos values('17401031','Paulina Alejandra','Nova','Ramírez',20);
--Insertar registro No completo
Insert into Alumnos (NOMBRE,APEPAT,APEMAT,NOCTRL) values ('XIMENA','VERDIN','CARREÑO','17401092');
Insert into Alumnos (NOCTRL,NOMBRE,APEPAT) VALUES('17401062','OMAR','RIVERA');

--Insertar Unidad
insert into UNIDADES values('Lenguaje de definicion de datos'),('Lenguaje de manipulacion de datos'),
	('Control de acceso'),('Concurrencia'),('SQL Procedural'),('Conectividad de base de datos');

--Borrar un registro de la tabla alumnos
Delete from Alumnos where NOCTRL='17400950';
--Borrar todos
Delete from Alumnos
--Borrar todos los alumnos que entreraron en 2016
delete from Alumnos where NOCTRL like '16%';
--Actualizar a un alumno
update Alumnos set EDAD=20 where NOCTRL='17401092';
update Alumnos set EDAD=20, APEMAT='Flores' where NOCTRL='17401062';

--Verificar alumnos
select * from Alumnos;

--Verificar Unidades
select * from UNIDADES;

--Insertar dos tareas por unidad y a 7 Alumnos del grupo le asignamos entre 1-3 tareas entregadas