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







