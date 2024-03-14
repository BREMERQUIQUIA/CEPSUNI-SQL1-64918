-- isnull vs coalesce

select 
	ISNULL(5,10) valor1, 
	ISNULL(NULL,10) valor2;
go


select coalesce(null,'null','8',null,'10') valor;
go

select 
	iddepartamento, 
	sum(sueldo) planilla1,
	sum(sueldo + isnull(comision,0)) planilla2
from rh..empleado
group by iddepartamento;
go

select 
	iddepartamento, 
	sum(sueldo) planilla1,
	sum(sueldo + coalesce(comision,0)) planilla2
from rh..empleado
group by iddepartamento;
go