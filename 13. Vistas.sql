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

