/*
Crear una tabla que contenga la siguiente información:
▪ Código de departamento
▪ Nombre del departamento
▪ Importe de planilla
▪ Importe de planilla proyectada con un aumento de 15%
Base de datos a utilizar: RH.
*/


select * into emp_103
from rh..empleado
where iddepartamento = 103;
go

select * from emp_103;
go

drop table emp_103;
go


select cast(iddepartamento as varchar(10)) id, nombre
from rh..departamento
union
select idempleado, concat(apellido,', ',nombre) nombre
from rh..empleado
union
select cast(cur_id as varchar(10)), cur_nombre
from educa..curso
go


