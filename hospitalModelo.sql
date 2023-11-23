DROP DATABASE hospital;
CREATE DATABASE hospital;
USE hospital;

DROP TABLE IF EXISTS piso_especialidad;
DROP TABLE IF EXISTS especialidad;
DROP TABLE IF EXISTS piso;
DROP TABLE IF EXISTS habitacion;
DROP TABLE IF EXISTS edificio;
DROP TABLE IF EXISTS empleado;
DROP TABLE IF EXISTS complejo_hospitalario;

CREATE TABLE edificio(
    id VARCHAR(20) NOT NULL PRIMARY KEY,
    ubicacion VARCHAR(50) NOT NULL,
    id_complejo INT NOT NULL
);
CREATE TABLE piso_especialidad(
    id_piso VARCHAR(30) NOT NULL,
    id_especialidad INT NOT NULL,
    estado ENUM('Principal','Secundario') NOT NULL
);
CREATE TABLE habitacion(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    camas INT NOT NULL,
    id_piso VARCHAR(30) NOT NULL
);
CREATE TABLE empleado(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    cargo VARCHAR(30) NOT NULL,
    id_piso VARCHAR(30) NULL
);
CREATE TABLE complejo_hospitalario(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL
);

CREATE TABLE especialidad(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL
);
CREATE TABLE piso(
    id_piso_edificio VARCHAR(30) NOT NULL PRIMARY KEY,
    id_edificio VARCHAR(20) NOT NULL,
    id_empleado INT NOT NULL,
    nro_piso VARCHAR(2) NOT NULL,
    CONSTRAINT UQ_edificio_piso UNIQUE(id_edificio,nro_piso)
);


ALTER TABLE piso_especialidad ADD CONSTRAINT piso_especialidad_id_especialidad_foreign FOREIGN KEY(id_especialidad) REFERENCES especialidad(id);
ALTER TABLE habitacion ADD CONSTRAINT habitacion_id_piso_foreign FOREIGN KEY(id_piso) REFERENCES piso(id_piso_edificio);
ALTER TABLE piso ADD CONSTRAINT piso_id_edificio_foreign FOREIGN KEY(id_edificio) REFERENCES edificio(id);
ALTER TABLE edificio ADD CONSTRAINT edificio_id_complejo_foreign FOREIGN KEY(id_complejo) REFERENCES complejo_hospitalario(id);
ALTER TABLE piso_especialidad ADD CONSTRAINT piso_especialidad_id_piso_foreign FOREIGN KEY(id_piso) REFERENCES piso(id_piso_edificio);
ALTER TABLE piso ADD CONSTRAINT piso_id_empleado_foreign FOREIGN KEY(id_empleado) REFERENCES empleado(id);
