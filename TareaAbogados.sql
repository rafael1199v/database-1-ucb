USE DATABASE_UCB

CREATE TABLE ESTADO(
	ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TIPO_ESTADO VARCHAR(50) NOT NULL
);

CREATE TABLE ABOGADO(
	ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	NOMBRE VARCHAR(40),
	APELLIDO VARCHAR(40),
	EDAD INT NOT NULL,
	ANHOS_SERVICIO INT NOT NULL
);


CREATE TABLE CASO(
	ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	DESCRIPCION VARCHAR(200) NOT NULL,
	F_INICIO VARCHAR(15) NOT NULL,
	F_FINLA VARCHAR(15) NOT NULL,
	PRIORIDAD VARCHAR(10),
	ID_ABOGADO INT NOT NULL FOREIGN KEY REFERENCES ABOGADO(ID)
);


CREATE TABLE ACTIVIDAD(
	ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TITULO VARCHAR(40) NOT NULL,
	DESCRIPCION VARCHAR(200) NOT NULL,
	HORAS_TRABAJADAS INT NOT NULL,
	PRIORIDAD VARCHAR(10) NOT NULL,
	ID_CASO INT NOT NULL FOREIGN KEY REFERENCES CASO(ID),
	ID_ESTADO INT NOT NULL FOREIGN KEY REFERENCES ESTADO(ID),
	ID_ABOGADO INT NOT NULL FOREIGN KEY REFERENCES ABOGADO(ID)
);


INSERT INTO ESTADO VALUES
('Reprogramado'),
('Cancelado'),
('En ejecucion')

INSERT INTO ABOGADO VALUES
('Rafael', 'Vargas', 18, 2),
('Marcelo', 'Salazar', 20, 3),
('Carlos', 'Mendez', 25, 5),
('Jorge', 'Ramirez', 24, 2),
('Carlos', 'Montalvo', 19, 2)

INSERT INTO CASO VALUES
('Robo a mano armada', '16-09-2023', '16-10-2023', 'Alta', 1),
('Agresion verbal a un estudiante', '16-09-2023', '01-10-2023', 'Baja', 2)

INSERT INTO ACTIVIDAD VALUES
('Revision de hechos', 'Hacer una revision detallada del hecho', 8, 'Alta', 1, 3, 1),
('Defensa del acusado', 'Elaborar un plan para la defensa del acusado', 9, 'Alta', 1, 3, 1),
('Papeleo', 'Terminar con algunos papeles del caso', 9, 'Baja', 1, 1, 2),
('Orientacion al cliente', 'Orientar al cliente sobre el caso en particular', 4, 'Baja', 2, 2, 3),
('Presentar cargos', 'Se presentara los cargos encontrados contra el acusado', 7, 'Media', 2, 3, 3)


Select *
from  CASO

select * 
from ACTIVIDAD

select *
from ABOGADO

select *
from ESTADO

-- Mostrar todas la actividades con estado reprogramado

select *
from ACTIVIDAD a
where a.ID_ESTADO = (select ID from ESTADO where ESTADO.TIPO_ESTADO = 'Reprogramado')

-- Mostrar todos los casos cuyas actividades se encuentren en ejecucion

select *
from CASO, ACTIVIDAD
where ACTIVIDAD.ID_ESTADO = (select ID from ESTADO where TIPO_ESTADO = 'En ejecucion') and CASO.ID = ACTIVIDAD.ID

-- Mostrar las actividades que tengan la misma prioridad que el caso al cual esta referenciado

select *
from ACTIVIDAD, CASO
where ACTIVIDAD.PRIORIDAD = CASO.PRIORIDAD

