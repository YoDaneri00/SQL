-- 72. Transacciones (Práctica)

-- Sin Error

	BEGIN;

	-- Restar Saldo Juan (200 $)
	UPDATE cuentas SET saldo = saldo – 200.00 WHERE cuenta_id = 1;

	-- Hacer Transacción
	UPDATE cuentas SET saldo = saldo + 200.00 WHERE cuenta_id = 2;

	-- Confirmar Transacción
	COMMIT;

	ROLLBACK;

-- Con Error

	BEGIN;

	-- Restar Saldo Juan (200 $)
	UPDATE cuentas SET saldo = saldo – 200.00 WHERE cuenta_id = 1;

 	-- Error
 	INSERT INTO cuentas (cuenta_id, titular, saldo) VALUES (1, ‘Error en la transacción’, 100);

	-- Hacer Transacción
	UPDATE cuentas SET saldo = saldo + 200.00 WHERE cuenta_id = 2;

	-- Confirmar Transacción
	COMMIT;

	ROLLBACK;

-- 73. Transacciones (Práctica II)

	-- Iniciar Transacción
	START TRANSACTION;

	-- Transacción
	UPDATE cuentas SET saldo = saldo – 100.00 WHERE cuenta_id = 1;
	UPDATE cuentas SET saldo = saldo + 100.00 WHERE cuenta_id = 2;

	-- Cerrar Transacción
	COMMIT;


-- 74. RollBacks

	DELIMITER // 

	START TRANSACTION;

	-- Primera Operación (Inserción Datos)
	INSERT INTO usuarios (nombre, email) VALUES (“Daniel Daneri”, danidaneri@gmail.com);

	-- Verificar Operación (Verificar Error)
	IF ROW_COUNT() = 0 THEN ROLLBACK;
	SELECT “Error: La Primera Operación ha Fallado” AS Resultado;

	-- Segunda Operación (Inserción Datos)
	ELSE
	INSERT INTO usuarios (nombre, email) VALUES (“Celia Culito”, celiaculito@gmail.com);

	-- Verificar Operación (Verificar Error)
	IF ROW_COUNT() = 0 THEN ROLLBACK;
	SELECT “Error: La Segunda Operación ha Fallado” AS Resultado;

	-- Efectuamos Transacción
	ELSE
	COMMIT;
	SELECT “Transacción Completada” AS Resultado;

	-- Finalizamos Condicionales & Delimiter
	END IF;
	END IF;
	END;
	//

	DELIMITER ;
