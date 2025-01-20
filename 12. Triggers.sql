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
