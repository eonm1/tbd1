--Autor Erick Octavio Nolasco Machuca
--Practica 11
--Crear la base de datos Hotel
create database Prestamos
On primary
(
	name= 'Prestamos.MDF',
	filename='C:\TBD2019\Prestamos.MDF'
)
log on
(
	name= 'Prestamos.LDF',
	filename='C:\TBD2019\Prestamos.LDF'
);
--Usar la base de datos prestamos
use Prestamos;
--Crear la tabla dispositivo
create table dispositivo
(
	IdDispositivo int primary key,
	Nombre varchar(20),
	Tipo varchar(10),
	Disponibles smallint
);
--Crear la tabla Persona
create table Persona
(
	IdPersona int primary key,
	Nombre varchar(20),
	ApellidoP varchar(20),
	ApellidoM varchar(20),
	Tipo varchar(10)
);
--Crear la tabla Prestamo llaves foraneas y constrains de default y check creados al momento en la tabla
create table Prestamo
(
	IdPrestamo int primary Key,
	P_IdDispositivo int Constraint FK_Pr_Dispositivo references Dispositivo(IdDispositivo),
	Credencial char(1),
	P_Persona int constraint FK_Pper_Prestamo references Persona(IdPersona),
	Horas tinyint, Constraint CHK_PR_HORAS check (Horas in(1,2,3)),
	Fecha date constraint DF_PR_FECHA default getdate()
);