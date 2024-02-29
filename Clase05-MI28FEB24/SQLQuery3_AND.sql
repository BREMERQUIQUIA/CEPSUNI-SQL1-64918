-- Operador AND
/*

Sintaxis:  (Condicion1) AND (Condicion2)

*/

-- Ejemplo
-- BD: RH
-- Consultar los empleados del departamento de ventas
-- que no gana comision

-- Paso 1: Averiguar el codigo o Id del departamento de ventas
-- Codigo: 103

select * from RH..departamento;
go

-- Paso 2: Construir la consulta

select idempleado, apellido, nombre, iddepartamento, comision
from RH..empleado
where (comision is null or comision=0) AND (iddepartamento=103);
go

select idempleado, apellido, nombre, iddepartamento, comision
from RH..empleado
where (ISNULL(comision,0)=0) AND (iddepartamento=103);
go



