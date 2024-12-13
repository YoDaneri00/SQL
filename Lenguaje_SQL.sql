-- 17. CREAR UNA BASE DE DATOS CON SQL

CREATE DATABASE <Nombre_Base_Datos>;

-- 18. CREAR TABLAS

CREATE TABLE <Nombre_Tabla> (<Columnas>);

-- -- Ejemplo

CREATE TABLE Usuarios (id int(2) primary key, nombre varchar(50), apellido varchar(50), correo varchar(100));

-- -- La Visualizamos (Tabla Vacía en este momento)

SELECT * FROM Base_01.Usuarios;

-- 19. LLENAR UNA TABLA CON DATOS

