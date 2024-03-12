/*
Desarrollar una sentencia SELECT para encontrar los ingresos 
por curso en el periodo actual. 
Base de datos EDUTEC.
*/

select * from EduTec..Ciclo
order by 1 desc;
go

select c.NomCurso, sum(cp.Matriculados*cp.PreCursoProg) Ingresos
from EduTec..CursoProgramado cp
join EduTec..Curso c on cp.IdCurso = c.IdCurso
where cp.IdCiclo = '2024-03'
group by c.NomCurso;
go

-- Reto 1: Agregar cantidad de secciones y cantidad de estudiantes

select 
	c.NomCurso, 
	count(1) Secciones,
	sum(cp.Matriculados) Estudiantes,
	sum(cp.Matriculados*cp.PreCursoProg) Ingresos
from EduTec..CursoProgramado cp
join EduTec..Curso c on cp.IdCurso = c.IdCurso
where cp.IdCiclo = '2024-03'
group by c.NomCurso;
go

-- Reto 2: El periodo debe ser dinamico

select 
	c.NomCurso, 
	count(1) Secciones,
	sum(cp.Matriculados) Estudiantes,
	sum(cp.Matriculados*cp.PreCursoProg) Ingresos
from EduTec..CursoProgramado cp
join EduTec..Curso c on cp.IdCurso = c.IdCurso
where cp.IdCiclo = convert(varchar(7),getdate(),23)
group by c.NomCurso;
go

select convert(varchar(7),getdate(),23);
go

-- Otra solucion 1

select 
	c.NomCurso, 
	count(1) Secciones,
	sum(cp.Matriculados) Estudiantes,
	sum(cp.Matriculados*cp.PreCursoProg) Ingresos
from EduTec..CursoProgramado cp
join EduTec..Curso c on cp.IdCurso = c.IdCurso
where cp.IdCiclo = left(convert(varchar(20),getdate(),23),7)
group by c.NomCurso;
go

-- Otra solucion 2

select 
	c.NomCurso, 
	count(1) Secciones,
	sum(cp.Matriculados) Estudiantes,
	sum(cp.Matriculados*cp.PreCursoProg) Ingresos
from EduTec..CursoProgramado cp
join EduTec..Curso c on cp.IdCurso = c.IdCurso
where cp.IdCiclo = format(getdate(),'yyyy-MM')
group by c.NomCurso;
go




