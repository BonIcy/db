CREATE DATABASE campuslands;

USE campuslands;

CREATE TABLE pais (
    idPais INT(50) NOT NULL PRIMARY KEY,
    nombrePais VARCHAR(100) NOT NULL
);

CREATE TABLE departamento (
    idDep INT(50) NOT NULL PRIMARY KEY,
    nombreDep VARCHAR(100) NOT NULL,
    idPais INT(50) NOT NULL,
    FOREIGN KEY (idPais) REFERENCES pais(idPais)
);

CREATE TABLE region (
    idReg INT(50) NOT NULL PRIMARY KEY,
    nombreReg VARCHAR(100) NOT NULL,
    idDep INT(50) NOT NULL,
    FOREIGN KEY (idDep) REFERENCES departamento(idDep)
);

CREATE TABLE campers (
    idCamper INT(50) NOT NULL PRIMARY KEY,
    nombreCamper VARCHAR(100) NOT NULL,
    apellidoCamper VARCHAR(100) NOT NULL,
    fechaNac DATE NOT NULL,
    idReg INT(50) NOT NULL,
    FOREIGN KEY (idReg) REFERENCES region(idReg)
);
