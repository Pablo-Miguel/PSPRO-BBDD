DROP DATABASE IF EXISTS GraficoTest;

CREATE DATABASE GraficoTest CHARACTER SET utf8 COLLATE utf8_general_ci;;

USE GraficoTest;

CREATE TABLE Usuario (
    Id_usuario INT UNSIGNED PRIMARY KEY,
    Nombre VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Pregunta (
    Id_pregunta INT UNSIGNED PRIMARY KEY,
    Id_usuario INT UNSIGNED,
    Pregunta VARCHAR(100) NOT NULL,
    CONSTRAINT fk_usuario FOREIGN KEY (Id_usuario) REFERENCES Usuario (Id_usuario)
);

CREATE TABLE Opcion (
    Id_opcion INT UNSIGNED PRIMARY KEY,
    Id_pregunta INT UNSIGNED,
    Texto VARCHAR(100) NOT NULL,
    Correcto BIT NOT NULL,
    CONSTRAINT fk_pregunta FOREIGN KEY (Id_pregunta) REFERENCES Pregunta (Id_pregunta)
);

INSERT INTO Usuario (Id_usuario, Nombre)
VALUES
    (1, "Pablo Miguel"),
    (2, "Marta"),
    (3, "Manuel Jesús")
;

INSERT INTO Pregunta (Id_pregunta, Id_usuario, Pregunta)
VALUES 
    (1, 1, "¿De qué color es el caballo blanco de Santiago?"),
    (2, 1, "¿Como se llama el dueño de Tesla?"),
    (3, 2, "¿Que es Java?"),
    (4, 2, "La intensidad de corriente eléctrica se mide utilizando:"),
    (5, 3, "¿Cuál es el único número que es par y primo?")
;

INSERT INTO Opcion (Id_opcion, Id_pregunta, Texto, Correcto)
VALUES 
    (1, 1, "Negro", 0),
    (2, 1, "No tiene caballo", 0),
    (3, 1, "Rojo", 0),
    (4, 1, "Blanco", 1),
    (5, 2, "Elon Musk", 1),
    (6, 2, "Jonny Deep", 0),
    (7, 2, "Tom Holland", 0),
    (8, 2, "Pablo Motos", 0),
    (9, 3, "Una manzana", 0),
    (10, 3, "Software", 1),
    (11, 3, "Hardware", 0),
    (12, 3, "Una marca de coche", 0),
    (13, 4, "Amperímetro", 1),
    (14, 4, "Barómetro", 0),
    (15, 4, "Nivómetro", 0),
    (16, 4, "Altímetro", 0),
    (17, 5, "4", 0),
    (18, 5, "1", 0),
    (19, 5, "0", 0),
    (20, 5, "2", 1)
;