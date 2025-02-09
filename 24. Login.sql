-- 138. Creando BBDD

-- Crear BBDD

	CREATE TABLE ‘login’, ‘usuarios’ (
		‘ID_Usuario’ INT NOT NULL AUTO_INCREMENT,
		‘Usuario’ VARCHAR(45) NOT NULL,
		‘Contraseña’ VARCHAR(45) NOT NULL,
		‘Fecha_Registro’ VARCHAR(45) NULL DEFAULT ‘CURRENT_TIMESTAMP()’,
	PRIMARY KEY (‘ID_Usuario’));

-- Insertar Datos

	USE Login;

	INSERT INTO Usuarios (Usuario, Contraseña) VALUES (‘YoDaneri’, ‘Android00’);
	INSERT INTO Usuarios (Usuario, Contraseña) VALUES (‘Manuela’, ‘Manuela00’);
	INSERT INTO Usuarios (Usuario, Contraseña) VALUES (‘Laura’, ‘Laura00’);
	INSERT INTO Usuarios (Usuario, Contraseña) VALUES (‘Clotilde’, ‘Clotilde00’);
	INSERT INTO Usuarios (Usuario, Contraseña) VALUES (‘Antunez’, ‘Antunez00’);

-- Consultar Datos

