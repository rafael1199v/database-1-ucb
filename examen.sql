USE DATABASE_UCB


CREATE TABLE EMPLEADOS_EX(
	ID INT NOT NULL,
	NOMBRE VARCHAR(20) NOT NULL,
	APELLIDO VARCHAR(20) NOT NULL,
	CARGO VARCHAR(20) NOT NULL,
	EDAD INT NOT NULL,
)

CREATE TABLE DEPENDENCIAS_EX(
	ID_SUPERIOR INT NOT NULL,
	ID_DEPENDIENTE INT NOT NULL,
)


INSERT INTO EMPLEADOS_EX VALUES
(1, 'Rafael', 'Vargas', 'Gerente General', 18),
(2, 'Juan', 'Ramirez', 'Jefe de contabilidad', 25),
(3, 'Carlos', 'Vasquez', 'Contador', 20),
(4, 'Marcelo', 'Salazar', 'Recursos humanos', 21),
(5, 'Mateo', 'Medina', 'Secretario', 18)

select * from EMPLEADOS_EX

INSERT INTO DEPENDENCIAS_EX VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 3),
(2, 4)

select * from DEPENDENCIAS_EX


select * 
from EMPLEADOS_EX
where ID in (select ID_DEPENDIENTE from DEPENDENCIAS_EX, EMPLEADOS_EX
			where EMPLEADOS_EX.ID = DEPENDENCIAS_EX.ID_SUPERIOR and EMPLEADOS_EX.CARGO = 'Gerente General')

