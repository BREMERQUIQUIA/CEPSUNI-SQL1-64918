-- Operador OR
/*

Sintaxis:  (Condicion1) OR (Condicion2)

*/

-- Ejemplo
-- BD: RH
-- Consultar los empleados de los departamentos
-- de contabilidad y ventas

-- Paso 1: Averiguar los codigos o Id de los departamentos
-- Codigos: 101, 103

select * from RH..departamento;
go

select idempleado, apellido, nombre, iddepartamento
from RH..empleado
where (iddepartamento=101) OR (iddepartamento=103);
go

-- Usando el operador IN

select idempleado, apellido, nombre, iddepartamento
from RH..empleado
where iddepartamento IN (101,103);
go

select idempleado, apellido, nombre, iddepartamento
from RH..empleado
where iddepartamento NOT IN (101,103);
go













