USE SeguimientoAlumnos;
GO

SELECT nombre, apellido  --esta es la primera consulta
FROM Alumnos;


SELECT id_alumno --esta es la segunda consulta y podria poner en el select *
FROM Examanes
WHERE nota >= 6;
