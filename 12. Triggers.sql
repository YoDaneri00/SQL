-- 66. Triggers (Disparadores)

-- Creamos Tablas

CREATE TABLE usuarios (
	  id INT AUTO_INCREMENT PRIMARY KEY,
	  nombre VARCHAR(50),
	  correo VARCHAR(100),
	  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	  );

CREATE TABLE auditoria_usuarios (
		id INT AUTO_INCREMENT PRIMARY KEY,
		usuario_id INT,
		accion VARCHAR(20),
		fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
		);

-- Creamos Trigger

DELIMITER //

CREATE TRIGGER despues_insertar_usuario
  AFTER INSERT ON usuarios
    FOR EACH ROW
  BEGIN
    INSERT INTO auditoria_usuarios (usuario_id, accion) VALUES (NEW.id, 'Inserción');
  END;
//

DELIMITER ;

-- Usamos Trigger

INSERT INTO usuarios (nombre, correo) VALUES ('Daniel Daneri', 'danieldaneri@gmail.com')

-- 67. Triggers II (Disparadores II)

-- Creamos Tabla

CREATE TABLE productos (
	id_producto INT AUTO_INCREMENT PRIMARY KEY,
	nombre_producto VARCHAR(100) NOT NULL,
	precio DECIMAL(10, 2) NOT NULL
);

-- Creamos Trigger

DELIMITER //
	
CREATE TRIGGER validar_precio
	BEFORE INSERT ON productos
	FOR EACH ROW
	BEGIN
		-- Validar Precio
		-- Obtenemos Parámetro Insertado
		IF NEW.precio <= 0 THEN
		SIGNAL SQLSTATE ‘4500’ SET MESSAGE_TEXT = ‘Precio incorrecto’;
		END IF;
	END
//

DELIMITER ;

-- Testamos Trigger (Sin Error)

INSERT INTO productos (nombre_producto, precio) VALUES (‘Portátil’, 1200.55);

-- Testamos Trigger (Con Error)

INSERT INTO productos (nombre_producto, precio) VALUES (‘Portátil’, -1200.55);
