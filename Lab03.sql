
-- Indicar que base de datos vamos a utilzar
USE DATABASE_UCB

-- Obtener los estudiantes con mayoria de edad
SELECT NOMBRE_COMPLETO, EDAD
FROM ESTUDIANTES
WHERE EDAD > 18

-- Obtener los estudiantes con genero femenino

SELECT NOMBRE_COMPLETO, GENERO
FROM ESTUDIANTES
WHERE GENERO = 'F'

-- Obtener los estudiantes femeninos con mayoria de edad

SELECT NOMBRE_COMPLETO, GENERO, EDAD
FROM ESTUDIANTES
WHERE GENERO = 'F' and EDAD >= 18

-- Obtener los estudiantes masculinos con mayoria de edad

SELECT NOMBRE_COMPLETO, GENERO, EDAD
FROM ESTUDIANTES
WHERE GENERO = 'M' and EDAD >= 18