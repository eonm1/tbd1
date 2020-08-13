--Autor: Erick Octavio Nolasco Machuca
--Fecha: 11/09/2019
--Base de datos de una agencia automotriz

Drop database Agencia;

create database Agencia
On primary
(
Name= 'Agencia.MDF',
FileName= 'C:\TBD2019\Agencia.MDF',
SIZE= 12 MB,
Maxsize= unlimited,
filegrowth= 10%
)

Log on
(
Name= 'Agencia.LDF',
FileName= 'C:\TBD2019\Agencia.LDF',
SIZE= 12 MB,
Maxsize= unlimited,
filegrowth= 10%
)
GO
--usar la base de datos agencia que se acaba de crear
use Agencia;
--Crear las tablas
CREATE TABLE Auto
(
	Clave INT IDENTITY(1,1) NOT NULL,
	Modelo VARCHAR(4),
	Color varchar(20),
	Descripcion varchar(255),
	Kilometraje varchar(20) , 
	Tipo varchar (45)

)
--2. CREAR LA TABLA Cliente
CREATE TABLE Cliente
(
	IDcliente INT IDENTITY(1,1) NOT NULL,
	C_NOMBRE VARCHAR(25),
	C_ApellidoP varchar(25),
	C_ApellidoM varchar(25),
	C_Direccion varchar(25),
	C_Telefono VARCHAR(10)
);
--3 CREAR LA TABLA Vendedor
CREATE TABLE Vendedor
(
	IDvendedor int identity(1,1) NOT NULL,
	V_Nombre varchar(45) ,
	V_ApellidoP varchar(45),
	V_ApellidoM varchar(45),
	V_Direccion varchar(45),
	Establecimiento varchar(22),
	V_Telefono varchar(10)
);
--4. CREAR LA TABLA Venta
CREATE TABLE Venta
(
	IDventa int identity(1,1) not null,
	Fecha date,
	Modelo varchar (4)Not null,
	V_Precio money,
	V_Establecimiento varchar (22) Not null,
	V_IDvendedor int,
	V_IDcliente int,
	Clave_auto int

);

--Crear los Constrains 

--Llave primaria Auto
Alter table Auto add constraint PK_Auto PRIMARY KEY (Clave) 
GO
--Llave primaria Cliente
alter table Cliente ADD CONsTRAINT PK_Cliente PRIMARY KEY(IDcliente)
GO
--LLave primaria Vendedor
Alter table Vendedor add constraint PK_Vendedor PRIMARY KEY (IDvendedor) 
GO
--LLave primaria Venta
ALTER TABLE Venta ADD CONSTRAINT PK_Venta PRIMARY KEY(IDventa);
--LLave foranea Venta-Auto
Alter table Venta ADD CONSTRAINT FK_Ve_Auto FOREIGN KEY (Clave_auto) REFERENCES Auto(Clave);
--LLave foranea Venta-Cliente
Alter table Venta ADD CONSTRAINT FK_VE_Cliente FOREIGN KEY(V_IDcliente) REFERENCES Cliente (IDcliente);
--Llave foranea Venta-Vendedor
Alter table Venta ADD CONSTRAINT FK_VE_Vendedor FOREIGN KEY (V_IDvendedor) REFERENCES Vendedor(IDvendedor);
