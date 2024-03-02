-- GROUP BY y HAVING
-- Junto con las funciones agregadas se utilizan
-- para hacer resumenes de grupos

-- Ejemplo 1
-- Cantidad de alumnos matriculados por curso
-- BD: EDUCA2

SELECT m.*, 'x' valor
FROM EDUCA2..MATRICULA m;
GO

SELECT cur_id, COUNT(alu_id) MATRICULADOS
FROM EDUCA2..MATRICULA
GROUP BY cur_id;
GO

-- Ejercicio 1
-- Se necesita saber la cantidad de empleados por departamento.
-- BD: RH

-- Ejercicio 2
-- Se necesita saber la planilla de empleados por departamento.
-- BD: RH

-- Ejercicio 3
-- Se necesita saber la planilla de empleados por departamento.
-- Se debe considerar el sueldo del empleado y su comisión.
-- BD: RH


select 5 + null "ALGO";
GO

select 5 + ISNULL(null,0) "ALGO";
GO


SELECT E.*, (sueldo + ISNULL(comision,0)) TOTAL
FROM RH..empleado E;
GO


SELECT 
	iddepartamento,
	COUNT(1) EMPLEADOS,
	SUM(sueldo + ISNULL(comision,0)) PLANILLA
FROM RH..empleado
GROUP BY iddepartamento;
GO


SELECT 
	iddepartamento,
	COUNT(1) EMPLEADOS,
	SUM(sueldo + ISNULL(comision,0)) PLANILLA
FROM RH..empleado
GROUP BY iddepartamento
HAVING COUNT(1) >= 4;
GO

SELECT 
	iddepartamento, idcargo, 
	COUNT(1) EMPLEADOS,
	SUM(sueldo + ISNULL(comision,0)) PLANILLA
FROM RH..empleado
GROUP BY iddepartamento, idcargo
order by iddepartamento, idcargo;
GO

-- ROLLUP
SELECT 
	iddepartamento, idcargo, 
	COUNT(1) EMPLEADOS,
	SUM(sueldo + ISNULL(comision,0)) PLANILLA
FROM RH..empleado
GROUP BY ROLLUP (iddepartamento, idcargo)
order by iddepartamento, idcargo;
GO

-- ROLLUP
SELECT 
	iddepartamento, idcargo, 
	COUNT(1) EMPLEADOS,
	SUM(sueldo + ISNULL(comision,0)) PLANILLA
FROM RH..empleado
GROUP BY CUBE (iddepartamento, idcargo)
order by iddepartamento, idcargo;
GO


-- GROUPING SETS
SELECT 
	iddepartamento, idcargo, 
	COUNT(1) EMPLEADOS,
	SUM(sueldo + ISNULL(comision,0)) PLANILLA
FROM RH..empleado
GROUP BY GROUPING SETS ((iddepartamento, idcargo),(iddepartamento),())
order by iddepartamento, idcargo;
GO

