--Creación de la base de datos
CREATE DATABASE SeguiemientoAlumnos;
GO
USE SeguimientoAlumnos;
GO

--Tabla de alumnos
CREATE TABLE Alumnos (
id_alumno INT IDENTITY (1,1) PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
dni VARCHAR(10) NOT NULL UNIQUE
);

--Tabla de materias (todas las que debe cursar)
CREATE TABLE Materias (
id_materia INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR(100) NOT NULL
);

--Tabla de exámenes rendidos
CREATE TABLE Examenes (
id_examen INT IDENTITY(1,1) PRIMARY KEY,
id_alumno INT NOT NULL FOREIGN KEY REFERENCES Alumnos(id_alumno),
id_materia INT NOT NULL FOREIGN KEY REFERENCES Materias(id_materia),
fecha DATE NOT NULL,
nota DECIMAL(4,2) NOT NULL
);

--Registros iniciales
INSERT INTO Alumnos(nombre,apellido,dni) VALUES
('Ana', 'Péres', '40111222'),
('Luis', 'Gómez', '50111222'),

INSERT INTO Materias(nombre) VALUES
('Matemática'),
('Lengua'),
('Historia');

INSERT INTO Examanes(id_alumno, id_materia, fecha, nota) VALUES
(1, 1, '2026-03-10', 8.50),
(1, 2, '2026-03-16', 5.00),
(2, 1, '2026-03-13', 6.00),
(2, 3, '2026-02-02', 9.25);



