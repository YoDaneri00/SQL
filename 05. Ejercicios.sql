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

SELECT nombre, nota_final FROM estudiantes WHERE nota_final >= 80;

-- EJERCICIO 4

SELECT nombre_producto, precio FROM productos WHERE cantidad_stock > 0 AND precio < 500;

-- EJERCICIO 5

SELECT * FROM productos ORDER BY precio DESC;

-- EJERCICIO 6

SELECT cliente_id, SUM(monto_venta) AS total_ventas FROM ventas 
GROUP BY cliente_id ORDER BY total_ventas DESC;

-- FINAL SECCION
