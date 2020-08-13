--Autor: Erick Octavio Nolasco Machuca
--23/sep/2019
--Practica 15

use Abarrotes;


--Crear la tabla provedores
Create table Provedores
(
	ProvedorId int primary key identity(1,1),
	RFC varchar(13),
	Nombre varchar(20),
	Telefono varchar(10),
	Contacto_Nombre varchar(20),
	Domicilio varchar(20),
	Pagina varchar(100)
);

--Crear la tabla Categorias
Create table Categorias
(
	CategoriaId int primary key identity(1,1),
	Nombre_Cat varchar(20),
	DescripcionCat varchar(20)
);
--Crear la tabla Productos
create table Productos
(
	ProductoId int primary key not null identity(1,1),
	CodigoBarra varchar(20),
	NombreProducto varchar(20),
	PrecioProducto money,
	UnidadesExistencia int,
	UnidadesMinimas int,
	ProvedorId int references Provedores(ProvedorId),
	CategoriaId int references Categorias(CategoriaId)
);


--Crear la tabla ventas
Create table Ventas
(
	IdVenta int primary key identity(1,1),
	FechaVenta date,
	ImporteVenta money,
	DescuentoVenta money,
	Hora time,
	ProductoId int references Productos(ProductoId)

)