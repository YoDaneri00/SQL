-- 63. Procedimiento Almacenado (Store Procedure)

-- Forma Genérica

DELIMITER // 
CREATE PROCEDURE Nombre
  BEGIN
    Instrucciones;
  END;
//
DELIMITER ;

-- Forma Específica

DELIMITER //
CREATE PROCEDURE seleccionar_categorias_0()
  BEGIN
    SELECT * FROM productos WHERE id_categorias = 0;
  END;
//
DELIMITER ;

-- Llamada A Store Procedure

CALL seleccionar_categorias_0();

-- 64. Ejercicio (Procedimiento Almacenado)

