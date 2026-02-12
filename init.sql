

-- Con el usuario ya creado, otorgamos los permisos necesarios para que pueda gestionar la base de datos. El usuario 'administrator' tendrá acceso desde cualquier host
GRANT ALL PRIVILEGES ON *.* TO 'administrator'@'%' IDENTIFIED BY 'administrator2026';
GRANT ALL PRIVILEGES ON *.* TO 'administrator'@'localhost' IDENTIFIED BY 'administrator2026';

FLUSH PRIVILEGES;

-- Acá creamos la base de datos del capstone
CREATE DATABASE IF NOT EXISTS capstone_db;
USE capstone_db;

-- Esto es una tabla de prueba
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
