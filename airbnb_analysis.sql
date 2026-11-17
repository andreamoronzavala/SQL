CREATE TABLE huespedes (
    huesped_id   SERIAL PRIMARY KEY,
    nombre       VARCHAR(100) NOT NULL,
    ciudad       VARCHAR(80)
);

CREATE TABLE reservas (
    reserva_id     SERIAL PRIMARY KEY,
    huesped_id     INT REFERENCES huespedes(huesped_id),
    fecha_entrada  DATE NOT NULL,
    fecha_salida   DATE NOT NULL,
    noches         INT NOT NULL,
    tarifa_noche   NUMERIC(10,2) NOT NULL,
    estatus        VARCHAR(12) NOT NULL,
    calificacion   SMALLINT
);

CREATE TABLE gastos (
    gasto_id   SERIAL PRIMARY KEY,
    fecha      DATE NOT NULL,
    categoria  VARCHAR(30) NOT NULL,
    monto      NUMERIC(10,2) NOT NULL
);

INSERT INTO huespedes (nombre, ciudad) VALUES
('Ana García', 'Ciudad de México'),
('Luis Martínez', 'Guadalajara'),
('Carlos López', 'Saltillo'),
('María Hernández', 'Tampico'),
('José González', 'Ciudad de México'),
('Fernanda Torres', 'Querétaro'),
('Jorge Ramírez', 'San Luis Potosí'),
('Daniela Flores', 'Guadalajara'),
('Miguel Garza', 'Reynosa'),
('Sofía Treviño', 'Ciudad de México'),
('John Smith', 'Houston'),
('Emily Johnson', 'San Antonio'),
('Ricardo Cantú', 'Saltillo'),
('Valeria Reyes', 'Chihuahua'),
('Diego Morales', 'Ciudad de México'),
('Paola Villarreal', 'Torreón'),
('Héctor Díaz', 'Guadalajara'),
('Mariana Cruz', 'Querétaro');

INSERT INTO reservas (huesped_id, fecha_entrada, fecha_salida, noches, tarifa_noche, estatus, calificacion) VALUES
(5, '2025-01-04', '2025-01-08', 4, 850.00, 'completada', NULL),
(17, '2025-01-15', '2025-01-16', 1, 950.00, 'completada', NULL),
(3, '2025-01-19', '2025-01-22', 3, 850.00, 'completada', NULL),
(13, '2025-01-27', '2025-01-28', 1, 900.00, 'cancelada', NULL),
(10, '2025-01-30', '2025-02-01', 2, 900.00, 'completada', 5),
(12, '2025-02-04', '2025-02-07', 3, 950.00, 'completada', 5),
(11, '2025-02-16', '2025-02-21', 5, 950.00, 'completada', 5),
(3, '2025-02-25', '2025-02-28', 3, 1000.00, 'completada', 4),
(4, '2025-03-06', '2025-03-08', 2, 1000.00, 'completada', NULL),
(14, '2025-03-12', '2025-03-19', 7, 950.00, 'cancelada', NULL),
(12, '2025-03-26', '2025-03-30', 4, 950.00, 'completada', 5),
(3, '2025-04-05', '2025-04-12', 7, 1100.00, 'cancelada', NULL),
(13, '2025-04-21', '2025-04-24', 3, 1100.00, 'completada', 4),
(16, '2025-04-28', '2025-04-30', 2, 1100.00, 'cancelada', NULL),
(13, '2025-05-04', '2025-05-07', 3, 1000.00, 'completada', 5),
(5, '2025-05-15', '2025-05-18', 3, 1000.00, 'completada', 5),
(8, '2025-05-25', '2025-05-30', 5, 950.00, 'completada', NULL),
(16, '2025-06-04', '2025-06-05', 1, 1000.00, 'completada', NULL),
(14, '2025-06-07', '2025-06-09', 2, 1000.00, 'completada', 5),
(18, '2025-06-11', '2025-06-18', 7, 1050.00, 'completada', 5),
(3, '2025-06-20', '2025-06-23', 3, 950.00, 'completada', 5),
(5, '2025-06-26', '2025-06-27', 1, 950.00, 'completada', 5),
(5, '2025-07-02', '2025-07-07', 5, 1250.00, 'completada', 5),
(16, '2025-07-10', '2025-07-12', 2, 1150.00, 'completada', 5),
(11, '2025-07-16', '2025-07-18', 2, 1150.00, 'completada', 5),
(5, '2025-07-23', '2025-07-27', 4, 1200.00, 'completada', 4),
(17, '2025-07-30', '2025-08-02', 3, 1200.00, 'completada', NULL),
(7, '2025-08-09', '2025-08-12', 3, 1000.00, 'completada', 5),
(12, '2025-08-17', '2025-08-24', 7, 1050.00, 'completada', 4),
(12, '2025-08-30', '2025-09-02', 3, 1000.00, 'completada', 3),
(4, '2025-09-05', '2025-09-08', 3, 900.00, 'completada', NULL),
(16, '2025-09-17', '2025-09-18', 1, 850.00, 'completada', 5),
(16, '2025-09-26', '2025-09-29', 3, 850.00, 'completada', 5),
(13, '2025-10-07', '2025-10-14', 7, 1000.00, 'completada', NULL),
(1, '2025-10-18', '2025-10-20', 2, 1000.00, 'completada', 4),
(5, '2025-10-29', '2025-11-02', 4, 950.00, 'completada', NULL),
(14, '2025-11-05', '2025-11-07', 2, 1050.00, 'completada', NULL),
(7, '2025-11-09', '2025-11-12', 3, 1050.00, 'completada', 5),
(2, '2025-11-20', '2025-11-22', 2, 1100.00, 'completada', 5),
(17, '2025-11-26', '2025-11-28', 2, 1000.00, 'completada', 4),
(5, '2025-12-02', '2025-12-04', 2, 1300.00, 'completada', 5),
(18, '2025-12-13', '2025-12-15', 2, 1300.00, 'cancelada', NULL),
(4, '2025-12-21', '2025-12-22', 1, 1250.00, 'completada', 4);

INSERT INTO gastos (fecha, categoria, monto) VALUES
('2025-01-05', 'luz', 710.00),
('2025-01-10', 'internet', 599.00),
('2025-01-15', 'limpieza', 1120.00),
('2025-02-05', 'luz', 710.00),
('2025-02-10', 'internet', 599.00),
('2025-02-15', 'limpieza', 840.00),
('2025-03-05', 'luz', 710.00),
('2025-03-10', 'internet', 599.00),
('2025-03-15', 'limpieza', 560.00),
('2025-04-05', 'luz', 710.00),
('2025-04-10', 'internet', 599.00),
('2025-04-15', 'limpieza', 280.00),
('2025-05-05', 'luz', 1220.00),
('2025-05-10', 'internet', 599.00),
('2025-05-15', 'limpieza', 840.00),
('2025-06-05', 'luz', 1360.00),
('2025-06-10', 'internet', 599.00),
('2025-06-15', 'limpieza', 1400.00),
('2025-07-05', 'luz', 1300.00),
('2025-07-10', 'internet', 599.00),
('2025-07-15', 'limpieza', 1400.00),
('2025-08-05', 'luz', 1300.00),
('2025-08-10', 'internet', 599.00),
('2025-08-15', 'limpieza', 840.00),
('2025-09-05', 'luz', 1360.00),
('2025-09-10', 'internet', 599.00),
('2025-09-15', 'limpieza', 840.00),
('2025-10-05', 'luz', 710.00),
('2025-10-10', 'internet', 599.00),
('2025-10-15', 'limpieza', 840.00),
('2025-11-05', 'luz', 650.00),
('2025-11-10', 'internet', 599.00),
('2025-11-15', 'limpieza', 1120.00),
('2025-12-05', 'luz', 710.00),
('2025-12-10', 'internet', 599.00),
('2025-12-15', 'limpieza', 560.00),
('2025-03-18', 'mantenimiento', 1200.00),
('2025-08-09', 'mantenimiento', 850.00);

SELECT COUNT(*) AS reservas,
       SUM(noches) AS noches_vendidas,
       SUM(noches * tarifa_noche) AS ingreso_total
FROM reservas
WHERE estatus = 'completada';

SELECT EXTRACT(MONTH FROM fecha_entrada) AS mes,
       COUNT(*) AS reservas,
       SUM(noches * tarifa_noche) AS ingreso
FROM reservas
WHERE estatus = 'completada'
GROUP BY mes
ORDER BY mes;

SELECT h.ciudad,
       COUNT(*) AS reservas
FROM reservas r
JOIN huespedes h ON h.huesped_id = r.huesped_id
WHERE r.estatus = 'completada'
GROUP BY h.ciudad
ORDER BY reservas DESC;

SELECT ROUND(AVG(calificacion), 2) AS calificacion_promedio,
       COUNT(calificacion) AS num_resenas
FROM reservas
WHERE calificacion IS NOT NULL;

SELECT estatus,
       COUNT(*) AS reservas
FROM reservas
GROUP BY estatus;

SELECT categoria,
       SUM(monto) AS total
FROM gastos
GROUP BY categoria
ORDER BY total DESC;

SELECT h.nombre,
       COUNT(*) AS estancias,
       SUM(r.noches * r.tarifa_noche) AS gasto_total
FROM reservas r
JOIN huespedes h ON h.huesped_id = r.huesped_id
WHERE r.estatus = 'completada'
GROUP BY h.nombre
HAVING COUNT(*) >= 2
ORDER BY estancias DESC;

SELECT CASE
           WHEN noches <= 2 THEN 'Corta (1-2 noches)'
           WHEN noches <= 4 THEN 'Media (3-4 noches)'
           ELSE 'Larga (5+ noches)'
       END AS tipo_estancia,
       COUNT(*) AS reservas,
       ROUND(AVG(calificacion), 2) AS calificacion_promedio
FROM reservas
WHERE estatus = 'completada'
GROUP BY tipo_estancia;

WITH ingreso_mensual AS (
    SELECT EXTRACT(MONTH FROM fecha_entrada) AS mes,
           SUM(noches * tarifa_noche) AS ingreso
    FROM reservas
    WHERE estatus = 'completada'
    GROUP BY mes
)
SELECT mes,
       ingreso,
       LAG(ingreso) OVER (ORDER BY mes) AS ingreso_mes_anterior,
       ingreso - LAG(ingreso) OVER (ORDER BY mes) AS diferencia
FROM ingreso_mensual
ORDER BY mes;

WITH ingresos AS (
    SELECT EXTRACT(MONTH FROM fecha_entrada) AS mes,
           SUM(noches * tarifa_noche) AS ingreso
    FROM reservas
    WHERE estatus = 'completada'
    GROUP BY mes
),
egresos AS (
    SELECT EXTRACT(MONTH FROM fecha) AS mes,
           SUM(monto) AS gasto
    FROM gastos
    GROUP BY mes
)
SELECT i.mes,
       i.ingreso,
       e.gasto,
       i.ingreso - e.gasto AS ganancia
FROM ingresos i
JOIN egresos e ON e.mes = i.mes
ORDER BY i.mes;

SELECT mes, ingreso, posicion
FROM (
    SELECT EXTRACT(MONTH FROM fecha_entrada) AS mes,
           SUM(noches * tarifa_noche) AS ingreso,
           RANK() OVER (ORDER BY SUM(noches * tarifa_noche) DESC) AS posicion
    FROM reservas
    WHERE estatus = 'completada'
    GROUP BY mes
) t
WHERE posicion <= 3;
