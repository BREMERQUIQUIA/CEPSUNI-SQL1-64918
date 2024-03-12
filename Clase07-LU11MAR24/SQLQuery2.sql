/*
Desarrollar una sentencia SELECT para encontrar el pago 
que se le debe hacer a cada profesor en el ciclo actual. 
Base de datos EDUTEC.
*/


select 	P.IdProfesor, P.ApeProfesor, P.NomProfesor, 	count(1) secciones,	sum(T.PagoHora*T.Horas) Pagofrom Edutec..CursoProgramado CPjoin Edutec..Profesor P on CP.IdProfesor = P.IdProfesorjoin Edutec..Curso C on CP.IdCurso = C.IdCursojoin Edutec..Tarifa T on C.IdTarifa = T.IdTarifawhere cp.IdCiclo = format(getdate(),'yyyy-MM')group by P.IdProfesor, P.ApeProfesor, P.NomProfesor;
go




