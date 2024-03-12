-- COMMON TABLE EXPRESSION
/*

WITH expression_name [ ( column_name [,...n] ) ] 
AS 
( CTE_query_definition )

*/

/*
Desarrollar una sentencia SELECT para encontrar la cantidad de alumnos 
matriculados por curso en el ciclo actual. 
El resultado debe mostrar tres columnas: 
	- código del curso, 
	- nombre del curso 
	- cantidad de alumnos matriculados. 
Base de datos EDUTEC.
*/

WITH
datos AS (
	select cp.* 
	from EduTec..CursoProgramado cp
	where cp.IdCiclo = format(getdate(),'yyyy-MM')
),
V2 AS (
	select IdCurso, sum(Matriculados) Matriculados
	from datos
	group by IdCurso
)
select v2.IdCurso, c.NomCurso, v2.Matriculados
from V2 
join EduTec..Curso c on v2.IdCurso = c.IdCurso;
go














