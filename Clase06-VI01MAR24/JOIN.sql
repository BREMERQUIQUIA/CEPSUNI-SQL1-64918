-- Se tiene

SELECT *
FROM RH..empleado E
JOIN RH..departamento D ON (E.iddepartamento=D.iddepartamento)
GO

-- Ejemplo 1

SELECT 
	iddepartamento,  
	COUNT(1) EMPLEADOS,
	SUM(sueldo + ISNULL(comision,0)) PLANILLA
FROM RH..empleado
GROUP BY iddepartamento
order by iddepartamento;
GO

-- Reto: Debe mostrar el nombre del departamento, no el ID.


SELECT 
	D.nombre,  
	COUNT(1) EMPLEADOS,
	SUM(sueldo + ISNULL(comision,0)) PLANILLA
FROM RH..empleado E
JOIN RH..departamento D ON (E.iddepartamento=D.iddepartamento)
GROUP BY D.nombre
order by D.nombre;
GO

-- COMBINACIONES

-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN
-- FULL JOIN
-- CROSS JOIN

-- INNER JOIN
SELECT *
FROM RH..empleado E
JOIN RH..cargo C ON E.idcargo = C.idcargo;
GO

-- LEFT JOIN

SELECT * 
FROM RH..cargo C
LEFT JOIN RH..empleado E ON C.idcargo=E.idcargo;
GO

-- RIGHT JOIN

SELECT * 
FROM RH..cargo C
RIGHT JOIN RH..empleado E ON C.idcargo=E.idcargo;
GO

