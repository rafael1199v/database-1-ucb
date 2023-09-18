
USE DATABASE_UCB

CREATE TABLE PLAN_CUENTAS(
	COD INT NOT NULL,
	NOMBRE VARCHAR(100) NOT NULL,
	CUENTA_PADRE INT NULL
);


SELECT * FROM PLAN_CUENTAS

INSERT INTO PLAN_CUENTAS VALUES 
(16542, 'Caja Corriente', NULL),
(51487, 'Caja Diaria', 16542),
(16813, 'Caja Combustible', 51487),
(54846, 'Prestamo', 16542),
(21215, 'Credito Vehicular', 16542)


SELECT * FROM PLAN_CUENTAS

SELECT *
FROM PLAN_CUENTAS
WHERE CUENTA_PADRE = (
	SELECT COD FROM PLAN_CUENTAS
	WHERE NOMBRE = 'Caja Corriente')


CREATE TABLE MATERIA(
	SIGLA VARCHAR(10) NOT NULL,
	NOMBRE VARCHAR(100) NOT NULL,
)

--CREATE TABLE PREREQUISITO(
--	ID_PADRE VARCHAR(10) NOT NULL,
--	ID_HIJO VARCHAR(10) NOT NULL,
--)

--INSERT INTO MATERIA VALUES
--()

--INSERT INTO PREREQUISITO VALUES
--()



-- Visualizar todos los prerequisitos de la materia base de datos

--select * from MATERIA

--select *
--from MATERIA m, PREREQUISITO p
--where m.SIGLA = p.ID_PADRE and m.NOMBRE = 'Base de Datos'

-- Crear la tabla de EMPLEADO de manera recursiva para el organigrama de una empresa

CREATE TABLE EMPLEADOS(
	ID INT NOT NULL,
	NOMBRE VARCHAR(20) NOT NULL,
	APELLIDO VARCHAR(20) NOT NULL,
	CARGO VARCHAR(20) NOT NULL,
	EDAD INT NOT NULL,
)

CREATE TABLE DEPENDENCIAS(
	ID_SUPERIOR INT NOT NULL,
	ID_DEPENDIENTE INT NOT NULL,
)


INSERT INTO EMPLEADOS VALUES
(1, 'Rafael', 'Vargas', 'Jefe', 18),
(2, 'Juan', 'Ramirez', 'Jefe de contabilidad', 25),
(3, 'Carlos', 'Vasquez', 'Contador', 20),
(4, 'Marcelo', 'Salazar', 'Recursos humanos', 21),
(5, 'Mateo', 'Medina', 'Secretario', 18)

select * from EMPLEADOS

INSERT INTO DEPENDENCIAS VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 3),
(2, 4)

select * from DEPENDENCIAS


select * 
from EMPLEADOS
where ID in (select ID_DEPENDIENTE from DEPENDENCIAS, EMPLEADOS where ID_DEPENDIENTE = ID and ID_SUPERIOR = (select ID from EMPLEADOS where CARGO = 'Jefe'))

select * 
from EMPLEADOS
where ID in (select ID_DEPENDIENTE from DEPENDENCIAS, EMPLEADOS
			where EMPLEADOS.ID = DEPENDENCIAS.ID_SUPERIOR and EMPLEADOS.CARGO = 'Jefe de contabilidad')


select * 
from EMPLEADOS
where ID in (select ID_SUPERIOR from DEPENDENCIAS, EMPLEADOS
			where EMPLEADOS.ID = ID_DEPENDIENTE and EMPLEADOS.CARGO = 'Contador')