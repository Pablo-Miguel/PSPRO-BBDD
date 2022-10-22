DROP DATABASE GraficoTest;

CREATE DATABASE GraficoTest CHARACTER SET utf8 COLLATE utf8_general_ci;;

USE GraficoTest;

CREATE TABLE Opciones_table (
    Id_opcion INT UNSIGNED PRIMARY KEY,
    Texto VARCHAR(50) NOT NULL,
    Correcto BIT NOT NULL
);

CREATE TABLE Pregunta_table (
    Id_pregunta INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Pregunta VARCHAR(50) NOT NULL,
    Id_opcion1 INT UNSIGNED,
    Id_opcion2 INT UNSIGNED,
    Id_opcion3 INT UNSIGNED,
    Id_opcion4 INT UNSIGNED,
    CONSTRAINT fk_pregunta_opcion1 FOREIGN KEY (Id_opcion1) REFERENCES Opciones_table (Id_opcion),
    CONSTRAINT fk_pregunta_opcion2 FOREIGN KEY (Id_opcion2) REFERENCES Opciones_table (Id_opcion),
    CONSTRAINT fk_pregunta_opcion3 FOREIGN KEY (Id_opcion3) REFERENCES Opciones_table (Id_opcion),
    CONSTRAINT fk_pregunta_opcion4 FOREIGN KEY (Id_opcion4) REFERENCES Opciones_table (Id_opcion)
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

INSERT INTO Pregunta_table (Pregunta, Id_opcion1, Id_opcion2, Id_opcion3, Id_opcion4)
VALUES 
    ("¿De qué color es el caballo blanco de Santiago?", 1, 2, 3, 4),
    ("¿Como se llama el dueño de Tesla?", 5, 6, 7, 8),
    ("¿Que es Java?", 9, 10, 11, 12),
    ("La intensidad de corriente eléctrica se mide utilizando:", 13, 14, 15, 16),
    ("¿Cuál es el único número que es par y primo?", 17, 18, 19, 20)
;