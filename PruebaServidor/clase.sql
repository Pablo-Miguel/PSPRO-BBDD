DROP DATABASE clase;

CREATE DATABASE clase;

USE clase;

CREATE TABLE alumno (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido1 VARCHAR(50) NOT NULL,
    Apellido2 VARCHAR(50) NOT NULL
);

INSERT INTO alumno (Nombre, Apellido1, Apellido2)
VALUES 
    ("Pablo Miguel", "del Castillo", "Barba"),
    ("Manuel Jesus", "Curtido", "Rosado")
;