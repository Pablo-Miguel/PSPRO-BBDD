DROP DATABASE GraficoTest;

CREATE DATABASE GraficoTest CHARACTER SET utf8 COLLATE utf8_general_ci;;

USE GraficoTest;

CREATE TABLE Opciones_table (
    Id_opcion INT UNSIGNED PRIMARY KEY,
    Texto VARCHAR(100) NOT NULL,
    Correcto BIT NOT NULL
);

CREATE TABLE Pregunta_table (
    Id_pregunta INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Pregunta VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE PreguntaOpciones_table (
    Id_PreguntaOpciones INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Id_pregunta INT UNSIGNED,
    Id_opcion INT UNSIGNED,
    CONSTRAINT fk_pregunta FOREIGN KEY (Id_pregunta) REFERENCES Pregunta_table (Id_pregunta),
    CONSTRAINT fk_pregunta_opcion FOREIGN KEY (Id_opcion) REFERENCES Opciones_table (Id_opcion)
);

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

INSERT INTO Pregunta_table (Pregunta)
VALUES 
    ("¿De qué color es el caballo blanco de Santiago?"),
    ("¿Como se llama el dueño de Tesla?"),
    ("¿Que es Java?"),
    ("La intensidad de corriente eléctrica se mide utilizando:"),
    ("¿Cuál es el único número que es par y primo?")
;

INSERT INTO PreguntaOpciones_table (Id_pregunta, Id_opcion)
VALUES 
    (1 , 1),
    (1 , 2),
    (1 , 3),
    (1 , 4),
    (2 , 5),
    (2 , 6),
    (2 , 7),
    (2 , 8),
    (3 , 9),
    (3 , 10),
    (3 , 11),
    (3 , 12),
    (4 , 13),
    (4 , 14),
    (4 , 15),
    (4 , 16),
    (5 , 17),
    (5 , 18),
    (5 , 19),
    (5 , 20)
;