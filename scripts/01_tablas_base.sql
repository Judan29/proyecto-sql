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
INSERT TO Alumnos(nombre,apellido,dni) VALUES
('Ana', 'Péres', '40111222'),
('Luis', 'Gómez', '50111222'),

INSERTO TO Materias(nombre) VALUES
('Matemática'),
('Lengua'),
