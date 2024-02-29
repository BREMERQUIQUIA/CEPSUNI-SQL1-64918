
-- Sintaxis Basica
/*
SELECT [TOP <n> [WITH TIES]] {*|<LISTA_DE_COLUMNAS>}
FROM [BD][ESQUEMA]<NOMBRE_TABLA>
WHERE <FILTRO_FILAS>
ORDER BY <COL_1>[ASC|DESC][,<COL_N>}
*/


-- Ejemplo 1
-- Consultando el contenido de la tabla ALUMNO

SELECT * FROM EDUCA2..ALUMNO;
GO

-- Ejemplo 2
-- Consultando el ID y nombre de los alumnos.

SELECT alu_id, alu_nombre
FROM EDUCA2..ALUMNO;
GO


-- Ejemplo 3
-- Consultando el ID y nombre de los alumnos.
-- Ordenar el resultado por nombre.

SELECT alu_id, alu_nombre
FROM EDUCA2..ALUMNO
ORDER BY alu_nombre;
GO


-- Ejemplo 4
-- Consultando el ID y nombre de los alumnos.
-- Ordenar el resultado por nombre en forma desc.
-- Mostrar solo los 3 primeros registros.

SELECT TOP 3 alu_id, alu_nombre
FROM EDUCA2..ALUMNO
ORDER BY alu_nombre DESC;
GO

-- Ejemplo 5
-- Uso de expresiones

SELECT C.*, 
	(C.cur_vacantes - C.cur_matriculados) "Disponibles",
	(C.cur_matriculados * C.cur_precio) "Ingreso estimado"
FROM EDUCA2..CURSO C;
GO

SELECT C.*, 
	(cur_vacantes - cur_matriculados) "Disponibles",
	(cur_matriculados * cur_precio) "Ingreso estimado"
FROM EDUCA2..CURSO C;
GO


