-- 79. Encriptación Datos

-- Creamos Tabla

	INSERT INTO usuarios (Nombre_Usuario, Clave_Usuario) VALUES (“YoDaneri”, “Asimov90”);
	INSERT INTO usuarios (Nombre_Usuario, Clave_Usuario) VALUES (“Pepito”, “Grillo90”);

-- Encriptamos

    SELECT Clave_Usuario AS “Contraseña”, AES_ENCRYPT(Clave_Usuario, “Base Datos”) 
    AS “Encriptado” FROM usuarios;

-- Desencriptamos

    SELECT Clave_Usuario AS “Contraseña”, AES_DECRYPT(AES_ENCRYPT(Clave_Usuario, “Base Datos”), ”Base Datos”)
	AS “Desencriptado” FROM usuarios;

-- 80. Encriptacion & Conteo Caracteres

-- Encriptamos (Método Liviano)

    SELECT Clave_Usuario AS “Contraseña”, COMPRESS(Clave_Usuario) 
    AS “Encriptado” FROM usuarios;

-- Desencriptamos (Método Liviano)

    SELECT Clave_Usuario AS “Contraseña”, UNCOMPRESS(COMPRESS(Clave_Usuario))
	AS “Encriptado” FROM usuarios;

-- Conteo Caracteres

    SELECT Nombre_Usuario AS “Usuario”, LENGTH(Nombre_Usuario) 
    AS “Caracteres” FROM usuarios;

-- 81. Concatenar Datos

-- Espaciado Manual

	USE Empresa;

	SELECT * FROM Empleado;
	SELECT CONCAT(Nombre_Empleado, “ “, Apellido_Empleado) 
	AS “Nombre_Completo” FROM Empleado;

-- Espaciado Automático

	SELECT * FROM Empleado;
	SELECT CONCAT_WS(“ “, Nombre_Empleado, Apellido_Empleado) 
	AS “Nombre_Completo” FROM Empleado;

-- 83. Fechas

-- Creamos Tabla

	USE Avanzada;
	
	SELECT * FROM Productos;

	INSERT INTO Productos (Nombre_Producto, Precio_Producto, Fecha_Garantia) VALUES (“Martillo”, 12.99, “2020-02-02”);
	INSERT INTO Productos (Nombre_Producto, Precio_Producto, Fecha_Garantia) VALUES (“Destornillador”, 10.99, “2020-02-02”);

-- Añadimos Fecha A Fecha Existente

	SELECT Fecha_Garantia AS “Fecha_Adquisicion”, ADDDATE(Fecha_Garantia, 90) AS “Fecha_Expiración” FROM Productos;

-- 84. Inner Join

