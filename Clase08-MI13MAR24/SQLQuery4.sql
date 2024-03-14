-- Subconsulta escalar

/*
Listar los empleados que su sueldo
es menor que el sueldo promedio.
*/

select e.*, (select avg(sueldo) from rh..empleado) sueldo_promedio
from rh..empleado e
where e.sueldo < (select avg(sueldo) from rh..empleado);
go

with
v1 as (select avg(sueldo) spromedio from rh..empleado)
select e.*, v1.spromedio
from rh..empleado e cross join v1
where e.sueldo < v1.spromedio;
go

-- Subconsultas que retornan varias filas, 
-- pero una sola columna.

/*
Quienes son los empleados con sueldo
mayor a 15000.00
*/

select * 
from rh..empleado
where idempleado in (select idempleado from rh..empleado where sueldo > 15000.0);
go

select * 
from rh..empleado
where idempleado = any (select idempleado from rh..empleado where sueldo > 15000.0);
go

select * 
from rh..empleado
where idempleado = some (select idempleado from rh..empleado where sueldo > 15000.0);
go


-- Subconsulta como tabla derivada

/*
El empleado con menor salario por departamento.
*/

select e.*
from rh..empleado e
join (select iddepartamento, min(sueldo) smin 
	  from rh..empleado group by iddepartamento) t
on e.iddepartamento=t.iddepartamento and e.sueldo=t.smin;
go


with
v1 as (
	select iddepartamento, min(sueldo) smin 
	from rh..empleado group by iddepartamento
)
select e.*
from rh..empleado e
join v1 on e.iddepartamento=v1.iddepartamento and e.sueldo=v1.smin;
go


-- Subconsulta correlacional
select e.*
from rh..empleado e
where sueldo = (
	select min(sueldo) smin 
	from rh..empleado e1
	where e.iddepartamento = e1.iddepartamento);
go


