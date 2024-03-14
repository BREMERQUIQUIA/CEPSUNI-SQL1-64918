-- DISTINCT
-- Elimina las filas duplicadas

select distinct iddepartamento
from rh..empleado;
go

select distinct iddepartamento, idcargo
from rh..empleado;
go

-- Tambien se puede utilizar en funciones agregadas
-- No considera los valores duplicados

select 
	iddepartamento, 
	sum(sueldo) planilla,
	sum(distinct sueldo) planilla2
from rh..empleado
group by iddepartamento;
go


