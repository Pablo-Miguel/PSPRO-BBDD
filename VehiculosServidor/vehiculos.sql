DROP DATABASE vehiculos;

CREATE DATABASE vehiculos;

USE vehiculos;

CREATE TABLE vehiculo (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Matricula VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO vehiculo (Marca, Modelo, Matricula)
VALUES 
    ("Renault", "Zoe", "2345FDF"),
    ("Renault", "Fluence", "0000FTL"),
    ("Tesla", "3", "2422FHT"),
    ("Tesla", "X", "1221FDF")
;