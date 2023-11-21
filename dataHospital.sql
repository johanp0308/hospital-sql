
-- piso_especialidad2

INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('A101',1,'Principal');
INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('B202',2,'Secundario');
INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('B202',3,'Principal');
INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('A101',4,'Secundario');
INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('A101',5,'Secundario');
INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('C303',6,'Secundario');
INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('C303',7,'Principal');
INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('C303',8,'Secundario');
INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('B202',9,'Secundario');
INSERT INTO piso_especialidad(id_piso,id_especialidad,estado) VALUES('A101',10,'Principal');

--  especialidad
INSERT INTO especialidad (nombre) VALUES ('Cardiología');
INSERT INTO especialidad (nombre) VALUES ('Ortopedia');
INSERT INTO especialidad (nombre) VALUES ('Pediatría');
INSERT INTO especialidad (nombre) VALUES ('Neurología');
INSERT INTO especialidad (nombre) VALUES ('Gastroenterología');
INSERT INTO especialidad (nombre) VALUES ('Oncología');
INSERT INTO especialidad (nombre) VALUES ('Dermatología');
INSERT INTO especialidad (nombre) VALUES ('Endocrinología');
INSERT INTO especialidad (nombre) VALUES ('Oftalmología');
INSERT INTO especialidad (nombre) VALUES ('Psiquiatría');

-- habitacion
INSERT INTO habitacion (camas, id_piso) VALUES (3, 'A101');
INSERT INTO habitacion (camas, id_piso) VALUES (2, 'B202');
INSERT INTO habitacion (camas, id_piso) VALUES (4, 'C303');
INSERT INTO habitacion (camas, id_piso) VALUES (1, 'A104');
INSERT INTO habitacion (camas, id_piso) VALUES (3, 'B205');
INSERT INTO habitacion (camas, id_piso) VALUES (2, 'C306');
INSERT INTO habitacion (camas, id_piso) VALUES (4, 'A107');
INSERT INTO habitacion (camas, id_piso) VALUES (1, 'B208');
INSERT INTO habitacion (camas, id_piso) VALUES (3, 'C309');
INSERT INTO habitacion (camas, id_piso) VALUES (2, 'A110');
-- Empleado
INSERT INTO empleado (id, nombre, cargo) VALUES (1, 'Juan Pérez', 'Médico');
INSERT INTO empleado (id, nombre, cargo) VALUES (2, 'Ana García', 'Enfermera');
INSERT INTO empleado (id, nombre, cargo) VALUES (3, 'Carlos López', 'Administrativo');
INSERT INTO empleado (id, nombre, cargo) VALUES (4, 'María Rodriguez', 'Recepcionista');
INSERT INTO empleado (id, nombre, cargo) VALUES (5, 'Pedro Martínez', 'Enfermero');
INSERT INTO empleado (id, nombre, cargo) VALUES (6, 'Laura Sánchez', 'Médico');
INSERT INTO empleado (id, nombre, cargo) VALUES (7, 'Alejandro Torres', 'Administrativo');
INSERT INTO empleado (id, nombre, cargo) VALUES (8, 'Sofía Gómez', 'Enfermera');
INSERT INTO empleado (id, nombre, cargo) VALUES (9, 'Javier Mendoza', 'Médico');
INSERT INTO empleado (id, nombre, cargo) VALUES (10, 'Isabel Ramírez', 'Administrativo');

-- Piso
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('A101', 'A', 1, '01');
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('B202', 'B', 2, '02');
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('C303', 'C', 3, '03');
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('A104', 'A', 4, '04');
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('B205', 'B', 5, '05');
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('C306', 'B', 6, '06');
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('A107', 'A', 7, '07');
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('B208', 'B', 8, '08');
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('C309', 'C', 9, '09');
INSERT INTO piso (id_piso_edificio, id_edificio, id_empleado, nro_piso) VALUES ('A110', 'A', 10, '10');

-- Edificio
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('A','Edificio Principal', 1);
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('B','Torre Norte', 1);
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('C','Bloque A', 2);
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('D','Edificio Central', 2);
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('E','Ala Este', 3);
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('F','Bloque B', 3);
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('G','Edificio Sur', 4);
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('H','Torre Oeste', 4);
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('I','Centro de Investigación', 5);
INSERT INTO edificio (id,ubicacion, id_complejo) VALUES ('J','Anexo', 5);

-- Comlejo Hospitalario
INSERT INTO complejo_hospitalario (nombre) VALUES ('Hospital A');
INSERT INTO complejo_hospitalario (nombre) VALUES ('Centro Médico B');
INSERT INTO complejo_hospitalario (nombre) VALUES ('Clínica C');
INSERT INTO complejo_hospitalario (nombre) VALUES ('Hospital General D');
INSERT INTO complejo_hospitalario (nombre) VALUES ('Centro de Salud E');
INSERT INTO complejo_hospitalario (nombre) VALUES ('Clínica Especializada F');
INSERT INTO complejo_hospitalario (nombre) VALUES ('Hospital Infantil G');
INSERT INTO complejo_hospitalario (nombre) VALUES ('Centro Médico H');
INSERT INTO complejo_hospitalario (nombre) VALUES ('Clínica I');
INSERT INTO complejo_hospitalario (nombre) VALUES ('Hospital J');

