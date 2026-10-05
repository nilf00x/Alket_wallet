-- Crear y usar la base de datos
CREATE DATABASE alke_wallet;
USE alke_wallet;

-- 1. Tabla Moneda
CREATE TABLE moneda (
    currency_id INT NOT NULL AUTO_INCREMENT,
    currency_name VARCHAR(50) NOT NULL,
    currency_symbol VARCHAR(10) NOT NULL,
    CONSTRAINT PK_moneda PRIMARY KEY (currency_id)
);

-- 2. Tabla Usuarios
CREATE TABLE usuarios (
    usuario_id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    saldo DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    contraseña VARCHAR(100) NOT NULL DEFAULT '123456',
    currency_id INT NOT NULL DEFAULT 1,
    CONSTRAINT PK_usuarios PRIMARY KEY (usuario_id),
    CONSTRAINT FK_usuario_moneda FOREIGN KEY (currency_id) REFERENCES moneda (currency_id)
);

-- 3. Tabla Transacciones
CREATE TABLE transacciones (
    transaccion_id INT NOT NULL AUTO_INCREMENT,
    sender_id INT NOT NULL,
    receiver_id INT NOT NULL,
    monto DECIMAL(12, 2) NOT NULL,
    fecha_transaccion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_transacciones PRIMARY KEY (transaccion_id),
    CONSTRAINT FK_sender FOREIGN KEY (sender_id) REFERENCES usuarios (usuario_id),
    CONSTRAINT FK_receiver FOREIGN KEY (receiver_id) REFERENCES usuarios (usuario_id)
);

-- Modificaciones de Estructura (ALTER TABLES) vistas en los anexos
ALTER TABLE usuarios ADD COLUMN contraseña VARCHAR(100) NOT NULL DEFAULT '123456';
ALTER TABLE usuarios ADD COLUMN currency_id INT NOT NULL DEFAULT 1;
ALTER TABLE usuarios ADD CONSTRAINT FK_usuario_moneda FOREIGN KEY (currency_id) REFERENCES moneda(currency_id);
