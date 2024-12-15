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

-- Seleccionamos Varias Columnas en específico

USE world;
SELECT ID, Name, District FROM world.city;

-- Cambiamos Nombre de Columna

USE Base_01;
SELECT Nombre as Name FROM Base_01.Usuarios;

-- Cambiamos Nombre de Varias Columnas
-- Se mostrará en el orden en que marquemos aquí

USE Base_01;
SELECT ID as Identifier, Nombre as Name, Apellido as Surname FROM Base_01.Usuarios;

-- 21. SENTENCIA WHERE

SELECT * FROM world.country WHERE Nombre = "España";
SELECT * FROM world.country WHERE Continente = "Europa";

-- Condición Numérica

SELECT * FROM world.country WHERE Capital < 150;
SELECT * FROM world.country WHERE Capital > 1000;

-- Condición Diferente

SELECT * FROM world.country WHERE Region <> "Caribe";

-- 22. SENTENCIA DISTINCT

SELECT DISTINCT(Columna) FROM <Nombre_Base_Datos>.<Nombre_Tabla>;
SELECT DISTINCT(CodigoPais) FROM world.city;

-- 23. SENTENCIA ORDER BY

SELECT * FROM <Nombre_Base_Datos>.<Nombre_Tabla> ORDER BY <Columna> ASC;
SELECT * FROM <Nombre_Base_Datos>.<Nombre_Tabla> ORDER BY <Columna> DESC;

USE world;
SELECT * FROM world.city ORDER BY population;

-- 24. OPERADORES BOOLEANOS

-- AND

SELECT * FROM world.country WHERE Continente = "Africa" AND Region = "Central";

-- OR

SELECT * FROM world.country WHERE Continente = "Africa" OR Region = "Central";

-- NOT

SELECT * FROM world.country WHERE NOT Region = "Europa Central";

-- 25. SENTENCIA IN

-- En Forma OR

SELECT * FROM world.country WHERE Continente = “Africa” OR Continente = “America”;

-- En Forma IN

SELECT * FROM world.country WHERE Continente IN (“Africa”, “America”);

-- Operadores Concatenados

SELECT * FROM world.country 
WHERE Continente IN (“Africa”, “America”)
AND Region IN (“Caribe”, “Indonesia”);

SELECT * FROM world.country 
WHERE Continente IN (“Africa”, “America”)
OR Region IN (“Caribe”, “Indonesia”);

-- Todos los Países en un Continente que no sea América

SELECT * FROM world.country WHERE Continente NOT IN ("America");

-- 26. SENTENCIA BETWEEN

SELECT * FROM world.city WHERE poblacion BETWEEN 1 AND 1000000 ORDER BY poblacion ASC;

-- Concatentando Negativa

SELECT * FROM world.city WHERE poblacion NOT BETWEEN 1 AND 1000000;

-- Concatentando AND

SELECT * FROM world.city WHERE poblacion BETWEEN (1 AND 1000000) AND ID BETWEEN (1 AND 1000);

-- 27. SENTENCIA LIKE

-- Empiece S

SELECT * FROM world.countrylanguage WHERE lenguaje LIKE ‘S%’;

-- Termine O

SELECT * FROM world.countrylanguage WHERE lenguaje LIKE ‘%O’;

-- Contenga MA

SELECT * FROM world.countrylanguage WHERE lenguaje LIKE ‘%MA%’;

-- Empiece F & Termine L

SELECT * FROM world.countrylanguage WHERE lenguaje LIKE ‘F%L’;

-- 28. CONCATENAR & SUMAR

-- Concatenar

SELECT Superficie + Poblacion FROM world.country;

-- Sumar

SELECT SUM (Superficie) FROM world.country;

-- 29. SENTENCIA COUNT & SENTENCIA MIN & SENTENCIA MAX & SENTENCIA AVG

-- Cantidad de Registros

SELECT COUNT(*) FROM world.city;

-- Valor Mínimo

SELECT MIN(Poblacion) FROM world.city;

-- Valor Máximo

SELECT MAX(Poblacion) FROM world.city;

-- Promedio

SELECT AVG(Poblacion) FROM world.city;

-- 30. SENTENCIA GROUP BY

SELECT lenguaje FROM world.countrylanguage GROUP BY lenguaje;

-- Contabilizamos Agrupaciones

SELECT lenguaje, COUNT(*) FROM world.countrylanguage GROUP BY lenguaje;

-- 31. FUNCIONES INTERMEDIAS

-- Mayúsculas

SELECT UCASE(nombre) FROM world.city;

-- Nueva Columna Mayúsculas

SELECT *, UCASE(nombre) AS “Mayusculas” FROM world.city;

-- Minúsculas

SELECT LCASE(CodigoPais) FROM world.city;

-- Nueva Columna Minúsculas

SELECT *, LCASE(CodigoPais) AS “Minusculas” FROM world.city;

-- Concatenar

SELECT Nombre, Distrito, CONCAT(Nombre, “ “, Distrito) FROM world.city;

-- Concatenar With Separator (WS)

SELECT Nombre, Distrito, CONCAT_WS(“ “, Nombre, Distrito) FROM world.city;

-- Truncar Decimales

SELECT EsperanzaVida, ROUND(EsperanzaVida, 0) FROM world.country;

-- Contar Caracteres

SELECT Continente, CHAR_LENGTH(Continente) FROM world.country;

-- 32. SENTENCIA CASE

SELECT Porcentaje,
	CASE
		WHEN Porcentaje < 10 THEN “Es menor a 10”
		WHEN Porcentaje > 10 THEN “Es mayor a 10”
	END 
AS Condiciones FROM world.countrylanguaje;

-- Colmatando Con ELSE

SELECT Porcentaje,
	CASE
		WHEN Porcentaje < 10 THEN “Es menor a 10”
		WHEN Porcentaje > 10 THEN “Es mayor a 10”
		ELSE “Es 10”
	END 
AS Condiciones FROM world.countrylanguaje;

-- 33. SENTENCIA UPDATE

-- Genérico

USE <Base_Datos>;
UPDATE <Tabla> SET <Columna> = <Dato_Actualizado> WHERE <Tabla> = “ID_Dato_Por_Actualizar”;

-- Específico

USE world;
UPDATE country SET nombre = “El Salvador” WHERE id = “ABW”;

-- Actualizar Por Lotes

USE world;
UPDATE country SET nombre = “El Salvador” WHERE continente = “Asia”;

-- 34. SENTENCIA ALTER TABLE

















