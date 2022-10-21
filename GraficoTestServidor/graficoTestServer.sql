DROP DATABASE GraficoTest;

CREATE DATABASE GraficoTest CHARACTER SET utf8 COLLATE utf8_general_ci;;

USE GraficoTest;

CREATE TABLE Pregunta_table (
    Id_pregunta INT UNSIGNED PRIMARY KEY,
    Pregunta VARCHAR(50) NOT NULL,
    Id_opcion INT UNSIGNED,
    CONSTRAINT fk_pregunta_opciones FOREIGN KEY (Id_opcion) REFERENCES Opciones_table (Id_opcion)
);

CREATE TABLE Opciones_table (
    Id_opcion INT UNSIGNED PRIMARY KEY,
    Texto VARCHAR(50) NOT NULL,
    Correcto BIT NOT NULL
);

INSERT INTO Pregunta_table (Id_pregunta, Pregunta, Id_opcion)
VALUES 
    (1, "¿De qué color es el caballo blanco de Santiago?", 1),
    (2, "¿De qué color es el caballo blanco de Santiago?", 2),
    (3, "¿De qué color es el caballo blanco de Santiago?", 3),
    (4, "¿De qué color es el caballo blanco de Santiago?", 4),
    (5, "¿Como se llama el dueño de Tesla?", 5),
    (6, "¿Como se llama el dueño de Tesla?", 6),
    (7, "¿Como se llama el dueño de Tesla?", 7),
    (8, "¿Como se llama el dueño de Tesla?", 8),
    (9, "¿Que es Java?", 9),
    (10, "¿Que es Java?", 10),
    (11, "¿Que es Java?", 11),
    (12, "¿Que es Java?", 12),
    (13, "La intensidad de corriente eléctrica se mide utilizando:", 13),
    (14, "La intensidad de corriente eléctrica se mide utilizando:", 14),
    (15, "La intensidad de corriente eléctrica se mide utilizando:", 15),
    (16, "La intensidad de corriente eléctrica se mide utilizando:", 16),
    (17, "¿Cuál es el único número que es par y primo?", 17),
    (18, "¿Cuál es el único número que es par y primo?", 18),
    (19, "¿Cuál es el único número que es par y primo?", 19),
    (20, "¿Cuál es el único número que es par y primo?", 20)
;

INSERT INTO Opciones_table (Id_opcion, Texto, Correcto)
VALUES 
    (1, "Negro", 0),
    (2, "No tiene caballo", 0),
    (3, "Rojo", 0),
    (4, "Blanco", 1),
    (5, "Elon Musk", 1),
    (6, "Jonny Deep", 0),
    (7, "Tom Holland", 0),
    (8, "Pablo Motos", 0),
    (9, "Una manzana", 0),
    (10, "Software", 1),
    (11, "Hardware", 0),
    (12, "Una marca de coche", 0),
    (13, "Amperímetro", 1),
    (14, "Barómetro", 0),
    (15, "Nivómetro", 0),
    (16, "Altímetro", 0),
    (17, "4", 0),
    (18, "1", 0),
    (19, "0", 0),
    (20, "2", 1)
;