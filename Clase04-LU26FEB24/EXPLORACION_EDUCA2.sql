/*
SELECT ...   (Columnas y/o expresiones)
FROM   ...   (De donde obtienes la información)
WHERE  ...   (Filtro de filas)
GROUP BY ... (Grupos)
HAVING   ... (Filtro de grupos)
ORDER BY ... (Criterios de ordenamiento)
*/


SELECT * FROM EDUCA2..CURSO;
GO

SELECT * FROM EDUCA2..ALUMNO;
GO

SELECT * FROM EDUCA2..MATRICULA;
GO

SELECT * 
FROM EDUCA2..MATRICULA
WHERE cur_id=1
ORDER BY mat_nota DESC;
GO

SELECT * 
FROM EDUCA2..MATRICULA
WHERE cur_id=1
ORDER BY 8 DESC;
GO


SELECT cur_id, alu_id, mat_nota 
FROM EDUCA2..MATRICULA
WHERE cur_id=1
ORDER BY 3 DESC;
GO

-- RETO
-- Registrar una nueva matricula en EDUCA2.

-- Sabina cachay 20:22
insert into EDUCA2..MATRICULA (cur_id,alu_id,emp_id,mat_tipo,mat_fecha,mat_precio,mat_cuotas,mat_nota)  values (1, 10, 3, 'REGULAR', '20240525', 1000.00, 2, 15);go


SELECT * FROM EDUCA2..PAGO
WHERE cur_id=1 AND alu_id=3;
GO

DELETE FROM EDUCA2..PAGO
WHERE cur_id=1 AND alu_id=3 AND pag_cuota=-3;
GO

DELETE FROM EDUCA2..PAGO
WHERE cur_id=1 AND alu_id=3 AND pag_cuota=3;
GO

ALTER TABLE EDUCA2..PAGO
ADD CONSTRAINT CK_PAGO_PAG_CUOTA CHECK(PAG_CUOTA>0);
GO

INSERT INTO EDUCA2..PAGO(cur_id,alu_id,pag_cuota,emp_id,pag_fecha,pag_importe)
VALUES(1,3,-3,4,GETDATE(),500);
GO

SELECT * FROM EDUCA2..MATRICULA;
GO

update EDUCA2..MATRICULAset mat_nota = 18where cur_id = 1 and alu_id = 4;
GO


