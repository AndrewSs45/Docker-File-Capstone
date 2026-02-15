-- 1. Aseguramos la base de datos
CREATE DATABASE IF NOT EXISTS capstone_db;
USE capstone_db;

-- 2. Creamos/Actualizamos el usuario para localhost (por si acaso)
-- Nota: La clave se define aquí para asegurar que el login local funcione
CREATE USER IF NOT EXISTS 'administrator'@'localhost' IDENTIFIED BY 'administrator2026';
GRANT ALL PRIVILEGES ON *.* TO 'administrator'@'localhost';

-- 3. Aseguramos permisos para el usuario que ya creó Docker
GRANT ALL PRIVILEGES ON *.* TO 'administrator'@'%';

-- 4. Refrescamos privilegios
FLUSH PRIVILEGES;

-- 5. Creamos la tabla de prueba
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
