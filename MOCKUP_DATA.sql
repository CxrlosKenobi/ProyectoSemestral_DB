-- Insertando datos de ejemplo en las tablas

-- Usuarios
INSERT INTO usuario (id_usuario, nombre, correo_udec) VALUES
(2021046062, 'Carlos', 'carlos@udec.cl'),
(2021046063, 'Marcela', 'marcela@udec.cl'),
(2022040201, 'Juan', 'juan@udec.cl'),
(2019020332, 'Ana', 'ana@udec.cl'),
(2023019304, 'Pedro', 'pedro@udec.cl');

-- Roles
INSERT INTO rol (nombre_rol) VALUES
('Estudiante'),
('Administrador');

-- UsuarioRol
INSERT INTO usuariorol (id_usuario, id_rol) VALUES
(2021046062, 1),
(2021046063, 2),
(2022040201, 1),
(2019020332, 1),
(2023019304, 1);

-- Salas
INSERT INTO sala (nombre, capacidad, ubicacion) VALUES
('Aula 101', 30, 'Edificio de Ingeniería - Piso 1'),
('Aula 202', 25, 'Edificio de Ingeniería - Piso 2'),
('Laboratorio 303', 20, 'Edificio de Ingeniería - Piso 3');

-- Accesos
INSERT INTO acceso (id_usuario, id_sala, fechahora) VALUES
(2021046062, 1, '2023-10-05 09:00:00'),
(2022040201, 2, '2023-10-05 11:00:00'),
(2019020332, 3, '2023-10-05 13:00:00'),
(2019020332, 1, '2023-10-05 14:00:00'),
(2019020332, 1, '2023-10-05 17:00:00');

-- Autorizaciones
INSERT INTO autorizacion (id_usuario, id_sala) VALUES
(2021046062, 1),
(2021046063, 1),
(2022040201, 2);

-- RegistroCambios
INSERT INTO registro (id_usuario, accion, fechahora) VALUES
(2021046062, 'Entrada', '2023-10-05 09:00:00'),
(2022040201, 'Entrada', '2023-10-05 11:00:00'),
(2019020332, 'Salida', '2023-10-05 14:00:00');

-- Eventos
INSERT INTO evento (nombre_evento, fechainicio, fechafin) VALUES
('Bienvenida Informática', '2023-10-01', '2023-10-01'),
('Memoria de Título #821', '2023-11-15', '2023-11-15'),
('Hackathon UdeC', '2023-12-05', '2023-12-06'),
('Examen Final', '2023-12-20', '2023-12-20'),
('Feria Tecnológica', '2023-09-10', '2023-09-11');

-- EventoSala
INSERT INTO eventosala (id_evento, id_sala) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2);

-- Dispositivos
INSERT INTO dispositivo (id_usuario, tipo_dispositivo) VALUES
(2021046062, 'iPhone'),
(2021046063, 'Android'),
(2022040201, 'Google Pixel'),
(2019020332, 'iPhone'),
(2023019304, 'Android');

-- Tarjetas
INSERT INTO tarjeta (id_usuario, codigo) VALUES
(2021046062, '1234ABCD'),
(2021046063, '5678EFGH'),
(2022040201, '9012IJKL'),
(2019020332, '3456MNOP'),
(2023019304, '7890QRST');


