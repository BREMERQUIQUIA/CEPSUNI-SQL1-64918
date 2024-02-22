-- Establece la BD por defecto
-- Activar la BD

USE DEMO01;
go


select * from ventas;
go

select * from ventas2;
go

select * from ALMACEN.PRODUCTO;
go

-- Especificar la ruta completa del objeto

select * from demo01.dbo.ventas;
go

select * from demo01..ventas2;
go

select * from demo01.ALMACEN.PRODUCTO;
go


