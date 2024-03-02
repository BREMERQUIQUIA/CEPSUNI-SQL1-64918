-- FUNCIONES AGREGADAS
-- Funciones para aplicar estadistica descriptiva
-- Funciones: COUNT, SUM, AVG, MAX, MIN

SELECT * FROM EDUCA2..PAGO;
GO

-- Ejemplo 1
-- Cuantos pagos se han registrado.
-- BD: EDUCA2

SELECT COUNT(*) FROM EDUCA2..PAGO;
GO

SELECT COUNT(cur_id) FROM EDUCA2..PAGO;
GO

SELECT COUNT(DISTINCT cur_id) FROM EDUCA2..PAGO;
GO


-- Ejemplo 2
-- Cuanto es el importe recaudado.
-- BD: EDUCA2

SELECT * FROM EDUCA2..PAGO;
GO

SELECT SUM(pag_importe) IMPORTE_RECAUDADO FROM EDUCA2..PAGO;
GO

SELECT SUM(pag_importe) [IMPORTE RECAUDADO] FROM EDUCA2..PAGO;
GO

SELECT SUM(pag_importe) "IMPORTE RECAUDADO" FROM EDUCA2..PAGO;
GO


-- Ejercicio 1
-- Encontrar el sueldo mas alto y el sueldo mas bajo en el departamento de ventas.
-- BD: RH


