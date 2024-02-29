-- LIKE
/*
Permite hacer consultas en base a un patr�n:

	COLUMNA [NOT] LIKE '<patron>'

Los comodines a utilizar son:

	_  : Un caracter
	%  : Una cadena de caracteres
	[] : Para indicar una posici�n

*/


SELECT * 
FROM RH..empleado
WHERE nombre LIKE '_[eau]%';
GO

SELECT * 
FROM RH..empleado
WHERE nombre NOT LIKE '_[eau]%';
GO

-- Ejercicio
/*
Los empleados que tengan como ultimo carater la letra "O".
*/





