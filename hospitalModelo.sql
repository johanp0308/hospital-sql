
DROP TABLE IF EXISTS 

CREATE TABLE edificio(
    id VARCHAR(20) NOT NULL PRIMARY KEY,
    ubicacion VARCHAR(50) NOT NULL,
    id_complejo INT NOT NULL
);
CREATE TABLE piso_especialidad(
    id_piso INT NOT NULL,
    id_especialidad INT NOT NULL,
    estado ENUM('principal','secundario') NOT NULL
);
CREATE TABLE habitacion(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    camas INT NOT NULL,
    id_piso BIGINT NOT NULL
);
CREATE TABLE empleados(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    cargo VARCHAR(30) NOT NULL
);
CREATE TABLE complejo_hospitalario(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL
);
ALTER TABLE
    complejo_hospitalario ADD PRIMARY KEY complejo_hospitalario_id_primary(id);
CREATE TABLE especialidad(
    id BIGINT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL
);
CREATE TABLE piso (
    id_piso_edificio VARCHAR NOT NULL PRIMARY KEY,
    id_edificio INT NOT NULL,
    id_empleado INT NOT NULL,
    nro_piso VARCHAR(2) NOT NULL,
    CONSTRAINT UQ_edificio UNIQUE (id_edificio),
    CONSTRAINT UQ_nro_piso UNIQUE (nro_piso)
);

ALTER TABLE piso ADD PRIMARY KEY piso_id_piso_edifico_primary(id_piso_edifico);
ALTER TABLE piso_especialidad ADD CONSTRAINT piso_especialidad_id_especialidad_foreign FOREIGN KEY(id_especialidad) REFERENCES especialidad(id);
ALTER TABLE habitacion ADD CONSTRAINT habitacion_id_piso_foreign FOREIGN KEY(id_piso) REFERENCES piso(id_piso_edifico);
ALTER TABLE piso ADD CONSTRAINT piso_id_edificio_foreign FOREIGN KEY(id_edificio) REFERENCES edificio(id);
ALTER TABLE edificio ADD CONSTRAINT edificio_id_complejo_foreign FOREIGN KEY(id_complejo) REFERENCES complejo_hospitalario(id);
ALTER TABLE piso_especialidad ADD CONSTRAINT piso_especialidad_id_piso_foreign FOREIGN KEY(id_piso) REFERENCES piso(id_piso_edifico);
ALTER TABLE piso ADD CONSTRAINT piso_id_empleado_foreign FOREIGN KEY(id_empleado) REFERENCES empleados(id);

--  

