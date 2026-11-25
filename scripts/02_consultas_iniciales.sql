USE SeguimientoAlumnos;
GO

--muestra nombre y apellido de los alumnos
SELECT nombre, apellido 
FROM Alumnos;

--alumnos con exámenes aprobados
SELECT id_alumno 
FROM Examenes
WHERE nota >= 6;

--ordena de mayor a menor
SELECT id_alumno, nota
FROM Examenes
ORDER BY nota DESC;

--combina condiciones
SELECT id_alumno, nota, id_materia, fecha
FROM Examenes
WHERE nota >= 8 AND fecha = '2026-03-10'
ORDER BY nota DESC;

--busca texto específico
SELECT nombre, apellido
FROM Alumnos
WHERE apellido LIKE 'G%';

--busca rangos
SELECT nota
FROM Examenes
WHERE nota BETWEEN 5 AND 7;

--lista de valores
SELECT nombre
FROM Materias
WHERE nombre IN ('Matemática', 'Lengua');

--limitar filas
SELECT TOP 2 nota
FROM Examenes
ORDER BY nota DESC;

--valores únicos, evita repeticiones
SELECT DISTINCT id_materia
FROM Examenes;

--funciones de agregación
SELECT COUNT(*)
FROM Examenes;

--funciones de agregación 2
SELECT AVG(nota)
FROM Examenes;

--funciones de agregación 3
SELECT MAX(nota), MIN(nota)
FROM Examenes;

--muestra la tabla Alumnos completa
SELECT *
FROM Alumnos;

--muestra la tabla Examenes completa
SELECT *
FROM Examenes;

--muestra la tabla Materias completa
SELECT *
FROM Materias;

--exámenes con nota menor a 6
SELECT nota
FROM Examenes
WHERE nota < 6;

--alumnos cuyo apellido sea distinto de Gómez
SELECT apellido, nombre
FROM Alumnos
WHERE apellido <> 'Gómez';

--usar IS NULL, pero dni esta definido con NOT NULL
SELECT apellido, nombre, dni
FROM Alumnos
WHERE dni IS NULL;

--probar IS NOT NULL
SELECT apellido, nombre, dni
FROM Alumnos
WHERE dni IS NOT NULL;











