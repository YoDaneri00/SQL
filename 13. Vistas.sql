-- 69. Vistas (Práctica)

DELIMITER //

CREATE VIEW VentasTotales AS 
	SELECT 
	p.Nombre AS Nombre_Producto, 
   	SUM(v.Cantidad) AS Total_Cantidad,
    	SUM(v.Cantidad * p.Precio) AS Ingreso_Total
	FROM productos p
	JOIN ventas v ON p.id_Productos = v.id_Productos
 	GROUP BY p.Nombre;
//

DELIMITER ;

-- 70. Vistas (Práctica II)

-- Crear Vista

DELIMITER //

CREATE VIEW ResumenVentas AS
	SELECT
	p.Nombre, 
	p.Precio,
	v.Cantidad AS Cantidad_Vendida,
	(p.Precio * v.Cantidad) AS Total_Ventas,
	v.Fecha
	FROM productos p
	JOIN ventas v
	ON p.ID_Productos = v.ID_Productos
//
	
DELIMETER ;

-- Llamar Vista

SELECT Nombre, Precio, Cantidad_Vendida, Total_Ventas, Fecha
FROM ResumenVentas
WHERE Total_Ventas > 10
ORDER BY Total_Ventas DESC;
