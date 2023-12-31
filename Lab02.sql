USE DATABASE_UCB

CREATE TABLE USUARIO (
	ID					INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	NOMBRE				VARCHAR(50) NOT NULL,
	EDAD				INT NOT NULL,
	UBICACION			VARCHAR(200),
	TELEFONO			VARCHAR(15) NOT NULL,
);

INSERT INTO USUARIO (NOMBRE, EDAD, UBICACION, TELEFONO)
VALUES('Marcelo Salazar', 18, 'Av. Banzer 8vo anillo. Zona el Remanso - Norte - Santa Cruz de la Sierra,', '+591-76848909')

CREATE TABLE FOTO (
	ID					INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TAMANHO_FOTO_MB		INT NOT NULL,
	TEMATICA			VARCHAR(40),
	ID_USUARIO			INT NOT NULL FOREIGN KEY REFERENCES USUARIO(ID)
);

INSERT INTO FOTO (TAMANHO_FOTO_MB, TEMATICA, ID_USUARIO)
VALUES(4, 'Videojuegos', 1)

CREATE TABLE AMIGO (
	ID					INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	NOMBRE				VARCHAR(50) NOT NULL,
	EDAD				INT NOT NULL,
	UBICACION			VARCHAR(200),
	TELEFONO			VARCHAR(15) NOT NULL,
	ID_USUARIO			INT NOT NULL FOREIGN KEY REFERENCES USUARIO(ID)
);

INSERT INTO AMIGO(NOMBRE, EDAD, UBICACION, TELEFONO, ID_USUARIO)
VALUES('Joel Arias', 19, 'Av. 3 Pasos al frente 4to anillo. Estacion Argentina - Santa Cruz de la Sierra,', '+591-72363112', 1)

INSERT INTO USUARIO (NOMBRE, EDAD, UBICACION, TELEFONO)
VALUES('Miranda Pizarro', 21, 'Av. Cumavi 7mo anillo. Zona Los pozos - Santa Cruz de la Sierra,', '+591-67812356')
INSERT INTO FOTO (TAMANHO_FOTO_MB, TEMATICA, ID_USUARIO)
VALUES(3, 'Politica', 2)
INSERT INTO AMIGO(NOMBRE, EDAD, UBICACION, TELEFONO, ID_USUARIO)
VALUES('Roberto Ramirez', 15, 'Zona Pampa de la Isla, Sirari, Barrio Urbar�- Santa Cruz de la Sierra', '+591-74312345', 2)

SELECT * FROM USUARIO
SELECT * FROM FOTO
SELECT * FROM AMIGO

