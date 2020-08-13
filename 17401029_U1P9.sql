--Autor: Erick Octavio Nolasco Machuca

--Crear la base de datos Hotel
create database Hotel
On primary
(
	name= 'Hotel.MDF',
	filename='C:\TBD2019\Hotel.MDF'
)
log on
(
	name= 'Hotel.LDF',
	filename='C:\TBD2019\Hotel.LDF'
);
--Usar la base de datos Hotel
use Hotel;
--Crear la tabla Habitacion
create table Habitacion
(
	IdHabitacion int primary key,
	NoHabitacion smallint,
	Tipo_Habitacion varchar(20),
	Piso_Habitacion tinyint,
	Descripcion varchar(50),
	NoPersonas tinyint
);
--Crear la tabla Huesped
create table Huesped
(
	IdHuesped int primary key,
	Nombre varchar(20),
	ApellidoP varchar(20),
	ApellidoM varchar(20),
	Edad tinyint 
)
--Crear la tabla Reservacion
create table Reservacion
(
	IdReservacion int primary key,
	Fecha_Reservacion date,
	Fecha_Ingreso date,
	R_IdHabitacion int,
	R_IdHuesped int
)
--Llave foranea Reservacion - Habitacion
alter table Reservacion add constraint FK_RE_Habitacion foreign key(R_IdHabitacion) references Habitacion(IdHabitacion);
--Llave foranea Reservacion - Huesped
alter table Reservacion add constraint FK_RE_Huesped foreign key(R_IdHuesped) references Huesped(IdHuesped);
--Crear constraint de default en la tabla reservacion campo fecha
alter table Reservacion add constraint DF_RE_Fecha_ingreso default getdate() for Fecha_Reservacion;
--Creacion constraint de Chec en la tabla Huesped campo Edad
alter table Huesped add constraint CHK_HU_Edad check (Edad>=18);