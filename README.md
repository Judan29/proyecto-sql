# Seguimiento de alumnos

## Descripción
Base de datos para registrar alumnos y hacer seguimiento de sus notas y exámenes rendidos.

## Estructura del Repositorio
* `README.md`: Documentación general del proyecto.
* `scripts/01_tablas_base.sql`: Creación de la base de datos, tablas y carga de registros iniciales.
* `scripts/02_consultas_iniciales.sql`: Consultas básicas de validación y filtros.

## Requisitos
- SQL Server 2025
- Visual Studio Code
- Extensión MSSQL para VS Code

## Pasos de ejecución
1. Abrir el Proyecto en VS Code y conectarse a SQL Server 2025 con la extensión MSSQL.
2. Abrir `scripts/01_tablas_base.sql` y ejecutarlo. Crea la base de datos, las tablas (Alumnos, Materias, Examenes) y carga los datos de prueba.
3. Abrir `scripts/02_consultas_iniciales.sql` y ejecutarlo. Muestra los resultados de las consultas de validación.

> Importante: el script 1 debe ejecutarse primero. El script 2 consulta las tablas que crea el script 1, y sin ellas da error.
