--1. Crear la base de datos
create database CAMPEONATO_AJEDREZ
ON PRIMARY
(
    NAME= 'CAMPEONATO_AJEDREZ.MDF',
    FILENAME='C:\TBD2019\CAMPEONATO_AJEDREZ.MDF'
)
LOG ON
(
    NAME='CAMPEONATO_AJEDREZ.LDF',
    FILENAME='C:\TBD2019\CAMPEONATO_AJEDREZ.LDF'   
);
--Usar la base de datos
use CAMPEONATO_AJEDREZ;
--cREAR TABLA TIPO_CONCURSO 
CREATE TABLE TIPO_CONCURSO
(
    TIP_ID INT PRIMARY KEY,
    TIP_NOMBRE VARCHAR(50),
    TIP_NIVEL TINYINT CHECK (TIP_NIVEL IN (1,2,3))
);
--CREAR TABLA CARRERAAS
CREATE TABLE CARRERAS
(
    CAR_ID CHAR(5) CONSTRAINT PK_CARRERAS PRIMARY KEY,
    CAR_NOMBRE VARCHAR(60),
    CAR_VIGENCIA1 DATE CONSTRAINT DF_CAR_VIG1 DEFAULT GETDATE(),
    CAR_VIGENCIA2 DATE
);
--CREAR TABLA PARTICIPANTES
CREATE TABLE PARTICIPANTES
(
    [NO CONTROL] varCHAR(8) NOT NULL,
    [NOMBRE COMPLETO] VARCHAR(120),
    CARRERA CHAR(5),
    SEMESTRE CHAR(2),
    [FECHA DE NAC] DATE,
    TIPO_CONCURSO INT,
    primary key([NO CONTROL]),
    FOREIGN KEY (TIPO_CONCURSO) REFERENCES TIPO_CONCURSO(TIP_ID),
    FOREIGN KEY(CARRERA) REFERENCES CARRERAS (CAR_ID),
    
);

--CREAR LA TABLA RESULTADOS
CREATE TABLE RESULTADOS
(
    RES_ID INT NOT NULL,
    NOCTRL varCHAR(8),
    TIP_ID INT REFERENCES TIPO_CONCURSO(TIP_ID),
    RES_LUGAR TINYINT,
    RES_OBSERVACIONES VARCHAR(50),
    RES_PUNTOS INT,
    CONSTRAINT PK_RESULTADOS PRIMARY KEY(RES_ID),
    CONSTRAINT FK_RES_PARTI FOREIGN KEY (NOCTRL)
    REFERENCES PARTICIPANTES ([NO CONTROL])
);

alter table TIPO_CONCURSO ADD T_OBSERVACIONES VARCHAR(30);
ALTER TABLE CARRERAS DROP COLUMN CAR_VIGENCIA2;