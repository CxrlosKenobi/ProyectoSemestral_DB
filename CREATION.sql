-- Creando tabla de Usuario
CREATE TABLE usuario (
    id_usuario INTEGER PRIMARY KEY,
    nombre VARCHAR(255),
    correo_udec VARCHAR(255) UNIQUE
);

-- Creando tabla de Rol
CREATE TABLE rol (
    id_rol SERIAL PRIMARY KEY,
    nombre_rol VARCHAR(50)
);

-- Creando tabla de UsuarioRol
CREATE TABLE usuariorol (
    id_usuario INTEGER REFERENCES usuario(id_usuario),
    id_rol INTEGER REFERENCES rol(id_rol),
    PRIMARY KEY (id_usuario, id_rol)
);

-- Creando tabla de Sala
CREATE TABLE sala (
    id_sala SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    capacidad INTEGER,
    ubicacion VARCHAR(100)
);

-- Creando tabla de Acceso
CREATE TABLE acceso (
    id_acceso SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuario(id_usuario),
    id_sala INTEGER REFERENCES sala(id_sala),
    fechahora TIMESTAMP
);

-- Creando tabla de Autorizacion
CREATE TABLE autorizacion (
    id_autorizacion SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuario(id_usuario),
    id_sala INTEGER REFERENCES sala(id_sala)
);

-- Creando tabla de RegistroCambios
CREATE TABLE registro (
    id_registro SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuario(id_usuario),
    accion VARCHAR(50),
    fechahora TIMESTAMP
);

-- Creando tabla de Eventos
CREATE TABLE evento (
    id_evento SERIAL PRIMARY KEY,
    nombre_evento VARCHAR(50),
    fechainicio DATE,
    fechafin DATE
);

-- Creando tabla de EventoSala
CREATE TABLE eventosala (
    id_evento INTEGER REFERENCES evento(id_evento),
    id_sala INTEGER REFERENCES sala(id_sala),
    PRIMARY KEY (id_evento, id_sala)
);

-- Creando tabla de Dispositivo
CREATE TABLE dispositivo (
    id_dispositivo SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuario(id_usuario),
    tipo_dispositivo VARCHAR(50)
);

-- Creando tabla de Tarjeta
CREATE TABLE tarjeta (
    id_tarjeta SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuario(id_usuario),
    codigo VARCHAR(50)
);

