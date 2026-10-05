-- Insertar Monedas
INSERT INTO moneda (currency_name, currency_symbol) VALUES
('Peso Chileno', 'CLP'),
('Dólar Americano', 'USD');

-- Insertar Usuarios
INSERT INTO usuarios (nombre, correo, saldo, contraseña, currency_id) VALUES
('Juan Pérez', 'juan.perez@email.com', 500000.00, 'pass123', 1),
('María Lopez', 'maria.lopez@email.com', 750000.50, 'secure456', 1),
('Carlos Muñoz', 'carlos.munoz@email.com', 12000.00, 'mypass789', 2);

-- Insertar Transacciones de Prueba
INSERT INTO transacciones (sender_id, receiver_id, monto) VALUES
(1, 2, 25000.00),
(2, 3, 40000.00),
(1, 3, 5000.00);
