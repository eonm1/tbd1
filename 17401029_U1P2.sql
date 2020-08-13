 
--Crear una base datos para el control y registro para una tienda de abarrotes
--Tamaño: 10mb para ambos archivos
--Crecimiento: 10%
--Tamaño maximo: ilimitado
--Practica 2

-- Autor: Erick Octavio Nolasco Machuca 17401029
--09/09/2019

create database Abarrotes
On primary
(
Name= 'Abarrotes.MDF',
FileName= 'C:\TBD2019\Abarrotes.MDF',
SIZE= 10 MB,
Maxsize= unlimited,
filegrowth= 10%
)

Log on
(
Name= 'Abarrotes.LDF',
FileName= 'C:\TBD2019\Abarrotes.LDF',
SIZE= 10 MB,
Maxsize= unlimited,
filegrowth= 10%
)
GO
--Consultar la Base de datos
exec sp_helpDB Abarrotes 

--Borrar Base de datos
drop database Abarrotes