--Autor: Erick Octavio Nolasco Machuca
--Practica 12

--Crear la base de datos
create database Biblioteca
ON PRIMARY
(
    NAME= 'Biblioteca.MDF',
    FILENAME='C:\TBD2019\Biblioteca.MDF'
)
LOG ON
(
    NAME='Biblioteca.LDF',
    FILENAME='C:\TBD2019\Biblioteca.LDF'   
);
--Usar la base de datos
use Biblioteca;
--Crear la tabla Socios y sus constraint
create table Socios
(
	Nombre varchar(20) not null,
	Direccion varchar(60),
	FechaInscripcion smalldatetime,
	NoSocio smallint identity(1,1),
	Constraint PK_Socios primary key (NoSocio)
)
--Crear la tabla Libros y sus constraint
create table Libros
(
	Titulo varchar(50),
	Autor1 varchar(50),
	Autor2 varchar(50),
	Autor3 varchar(50),
	FechaEdicion smalldatetime,
	NoLibro bigint identity(1,1),
	Constraint PK_Libros primary key (NoLibro)
)
--Crear tabla prestamo y sus constraint
create table Prestamo
(
	FechaPrestamo smalldatetime constraint DF_Pres_FechaPrestamo default getdate(),
	FechaEntrega smalldatetime constraint CHk_Pres_FechaEntrega check(FechaEntrega >= getdate()),
	NoSocio smallint,
	NoLibro bigint,
	IdPrestamo bigint identity(1,1),
	Constraint PK_Prestamo primary key(IdPrestamo),
	Constraint FK_Pres_Libros foreign key(NoLibro) references Libros(NoLibro),
	Constraint FK_Pres_Socios foreign Key (NoSocio) references Socios(NoSocio)
)

--Agregar un campo a la tabla prestamo
alter table Prestamo add Observaciones varchar(60);

