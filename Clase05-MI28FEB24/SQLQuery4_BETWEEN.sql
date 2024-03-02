-- Operador: BETWEEN
/*
Sintaxis: 
	<columna> [NOT] BETWEEN <limite_inferior> AND <limite_superior>
*/


SELECT * 
FROM RH..empleado
WHERE iddepartamento BETWEEN 102 AND 105;
GO

SELECT * 
FROM RH..empleado
WHERE iddepartamento=102 OR iddepartamento=103  
      OR iddepartamento=104 OR iddepartamento=105;
GO


SELECT * 
FROM RH..empleado
WHERE nombre BETWEEN 'C' AND 'F';
GO

SELECT * 
FROM RH..empleado
WHERE nombre BETWEEN 'C' AND 'G';
GO

SELECT * 
FROM RH..empleado
WHERE SUBSTRING(nombre,1,1) BETWEEN 'C' AND 'F';
GO

