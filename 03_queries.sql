-- Query A: Moneda asociada a un usuario
SELECT u.nombre, m.currency_name, m.currency_symbol
FROM usuarios u
INNER JOIN moneda m ON u.currency_id = m.currency_id
WHERE u.usuario_id = 1;

-- Query B: Todas las transacciones
SELECT * FROM transacciones;

-- Query C: Movimientos de un usuario específico
SELECT * FROM transacciones
WHERE sender_id = 1 OR receiver_id = 1;

-- Query D: Modificación del correo electrónico
UPDATE usuarios
SET correo = 'juan.nuevo_correo@email.com'
WHERE usuario_id = 1;

-- Query E: Eliminación de una transacción
DELETE FROM transacciones
WHERE transaccion_id = 1;
