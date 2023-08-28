-- Este es un comentario en SQL

-- Crear una base de datos
CREATE DATABASE DATABASE_UCB

-- Utilizar una base de datos

USE DATABASE_UCB

-- Crear las tablas de informacion (entidades)

CREATE TABLE ESTUDIANTES (
	ID					INT IDENTITY(1,1) NOT NULL,
	NOMBRE_COMPLETO		VARCHAR(200) NOT NULL,
	CARNET				INT NOT NULL,
	GENERO				VARCHAR(20) NOT NULL,
	EDAD				INT NOT NULL,
);

-- Insertar datos a la tabla Estudiantes
INSERT INTO ESTUDIANTES (NOMBRE_COMPLETO, CARNET, GENERO, EDAD)
VALUES ('Juan Perez', 137747782, 'Masculino', 99);

INSERT INTO ESTUDIANTES (
    NOMBRE_COMPLETO,
    CARNET,
    GENERO,
    EDAD
)
VALUES
(
    'Juan Pérez',
    123456,
    'M',
    20
),
(
    'María López',
    987654,
    'F',
    19
),
(
    'Antonio García',
    3210987,
    'M',
    21
),
(
    'Susana Martínez',
    5432109,
    'F',
    22
),
(
    'Pedro Sánchez',
    7654327,
    'M',
    23
),
(
    'Laura Rodríguez',
    987654,
    'F',
    24
),
(
    'Carlos Gómez',
    1234568,
    'M',
    25
),
(
    'Carmen Fernández',
    9876543,
    'F',
    26
),
(
    'David Hernández',
    3210987,
    'M',
    27
);

-- Manipular base de datos
SELECT * FROM ESTUDIANTES
WHERE EDAD < 20

