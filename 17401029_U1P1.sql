/* */
-- Autor : Erick Octavio Nolasco Machuca
-- Fecha : 05/09/2019
-- Descripcion : Crear mi primer base de datos

create database TBD2019_GA
ON PRIMARY
(
NAME = 'TBD2019_GA.MDF' ,
FILENAME = 'C:\TBD2019\TBD2019.MDF'
)

LOG ON
(
NAME = 'TBD2019_GA.LDF' ,
FILENAME = 'C:\TBD2019\TBD2019.LDF'
)
GO