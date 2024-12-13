-- 17. CREAR UNA BASE DE DATOS CON SQL

CREATE DATABASE <Nombre_Base_Datos>;

-- 18. CREAR TABLAS

CREATE TABLE <Nombre_Tabla> (<Columnas>);

-- -- Ejemplo

CREATE TABLE Usuarios (id int(2) primary key, nombre varchar(50), apellido varchar(50), correo varchar(100));

-- -- La Visualizamos (Tabla Vacía en este momento)

SELECT * FROM Base_01.Usuarios;

-- 19. LLENAR UNA TABLA CON DATOS

-- Creamos la misma Tabla que anteriormente en Base_02 para

USE Base_02;
CREATE TABLE Usuarios (id int(2) primary key, nombre varchar(50), apellido varchar(50), correo varchar(100));

-- Sintaxis Genérica para Insertar Datos

INSERT INTO <Nombre_Tabla> VALUES (<Valores>);

-- Sintaxis Específica

INSERT INTO Usuarios VALUES (1, 'Daniel', 'Daneri', 'daneri@gmail.com');
INSERT INTO Usuarios VALUES (2, 'Emilio', 'Piletas', 'piletas@gmail.com');

-- 20. SENTENCIA SELECT

-- Seleccionamos Toda la información de la Tabla

USE world;
SELECT * FROM world.city;

-- Seleccionamos Una Columna en específico

USE world;
SELECT Name FROM world.city;






