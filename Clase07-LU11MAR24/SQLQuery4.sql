/*
Se necesita saber la cantidad de trabajadores por departamento,
y el porcentaje que representan del total de trabajadores.
Las columnas son:
 - Codigo de departamento
 - Nombre del departamento
 - Cantidad trabajadores
 - Porcentaje del total
Base de datos: RH
*/

with
v1 as (
	select iddepartamento, count(1) trabajadores
	from rh..empleado
	group by iddepartamento
),
v2 as (
	select sum(trabajadores) total from v1
),
v3 as (
	select 
		v1.iddepartamento, v1.trabajadores,
		cast(v1.trabajadores * 100.0 / v2.total as decimal(7,2)) porcentaje
	from v1 cross join v2
)
select 
	v3.iddepartamento, d.nombre, v3.trabajadores, v3.porcentaje
from v3 
join rh..departamento d on v3.iddepartamento = d.iddepartamento;
go


