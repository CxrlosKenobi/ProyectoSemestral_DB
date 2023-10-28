-- Eventos programados y sus respectivas salas, ordenados por fecha de inicio.
SELECT e.nombre_evento, sala.nombre, e.fechainicio, e.fechafin
FROM evento e
JOIN eventosala es ON e.id_evento = es.id_evento
JOIN sala ON es.id_sala = sala.id_sala
ORDER BY e.fechainicio;

-- Salas con la mayor cantidad de accesos en el último mes.
SELECT s.nombre, COUNT(*) AS num_accesos
FROM acceso a
JOIN sala s ON a.id_sala = s.id_sala
WHERE a.fechahora BETWEEN '2023-10-01' AND '2023-10-07'
GROUP BY s.nombre
ORDER BY num_accesos DESC;

-- Validación de acceso a una sala.
SELECT COUNT(*) 
FROM autorizacion 
WHERE id_usuario = 1 AND id_sala = 1;

-- Lista de usuarios, junto con su tarjeta y rol respectivo.
SELECT u.nombre, u.correo_udec, t.codigo as "codigo_tarjeta", r.nombre_rol
FROM usuario u
JOIN tarjeta t ON u.id_usuario = t.id_usuario
JOIN usuariorol ur ON u.id_usuario = ur.id_usuario
JOIN rol r ON ur.id_rol = r.id_rol
ORDER BY nombre_rol, u.nombre;

