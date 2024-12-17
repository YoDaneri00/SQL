-- EJERCICIO 1

CREATE TABLE Libros 
  (
  libro_id INT PRIMARY KEY, 
  titulo VARCHAR(255) NOT NULL, 
  autor VARCHAR(100) NOT NULL, 
  fecha_publicacion DATE, 
  genero VARCHAR(50)
  );

-- EJERCICIO 2

CREATE TABLE Ventas 
  (
  venta_id INT PRIMARY KEY, 
  fecha_venta DATETIME, 
  monto_total DECIMAL(10,2), 
  metodo_pago VARCHAR(20), 
  cliente_id INT
  );

-- EJERCICIO 3
















