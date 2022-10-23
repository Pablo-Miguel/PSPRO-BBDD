DROP DATABASE GraficoTest;

CREATE DATABASE GraficoTest CHARACTER SET utf8 COLLATE utf8_general_ci;;

USE GraficoTest;

CREATE TABLE Opciones_table (
    Id_opcion INT UNSIGNED PRIMARY KEY,
    Texto VARCHAR(100) NOT NULL,
    Correcto BIT NOT NULL
);

CREATE TABLE Pregunta_table (
    Pregunta VARCHAR(100) NOT NULL PRIMARY KEY
);

CREATE TABLE PreguntaOpciones_table (
    Id_PreguntaOpciones INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Pregunta VARCHAR(100) NOT NULL,
    Id_opcion INT UNSIGNED,
    CONSTRAINT fk_pregunta FOREIGN KEY (Pregunta) REFERENCES Pregunta_table (Pregunta),
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

INSERT INTO PreguntaOpciones_table (Pregunta, Id_opcion)
VALUES 
    ("¿De qué color es el caballo blanco de Santiago?" , 1),
    ("¿De qué color es el caballo blanco de Santiago?" , 2),
    ("¿De qué color es el caballo blanco de Santiago?" , 3),
    ("¿De qué color es el caballo blanco de Santiago?" , 4),
    ("¿Como se llama el dueño de Tesla?" , 5),
    ("¿Como se llama el dueño de Tesla?" , 6),
    ("¿Como se llama el dueño de Tesla?" , 7),
    ("¿Como se llama el dueño de Tesla?" , 8),
    ("¿Que es Java?" , 9),
    ("¿Que es Java?" , 10),
    ("¿Que es Java?" , 11),
    ("¿Que es Java?" , 12),
    ("La intensidad de corriente eléctrica se mide utilizando:" , 13),
    ("La intensidad de corriente eléctrica se mide utilizando:" , 14),
    ("La intensidad de corriente eléctrica se mide utilizando:" , 15),
    ("La intensidad de corriente eléctrica se mide utilizando:" , 16),
    ("¿Cuál es el único número que es par y primo?" , 17),
    ("¿Cuál es el único número que es par y primo?" , 18),
    ("¿Cuál es el único número que es par y primo?" , 19),
    ("¿Cuál es el único número que es par y primo?" , 20)
;