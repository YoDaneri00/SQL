-- 138. Creando BBDD

-- Crear BBDD

	CREATE TABLE ‘login’, ‘usuarios’ (
		‘ID_Usuario’ INT NOT NULL AUTO_INCREMENT,
		‘Usuario’ VARCHAR(45) NOT NULL,
		‘Contraseña’ VARCHAR(45) NOT NULL,
		‘Fecha_Registro’ VARCHAR(45) NULL DEFAULT ‘CURRENT_TIMESTAMP()’,
	PRIMARY KEY (‘ID_Usuario’));

-- 
