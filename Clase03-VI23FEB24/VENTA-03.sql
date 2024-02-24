
-- Creacion de la tabla venta.
-- Con PK y FK.
-- Validar columnas

DROP TABLE ABC..VENTA;
GO

CREATE TABLE ABC..VENTA(
	IDVENTA INT NOT NULL IDENTITY(1,1),
	IDCLIENTE INT NOT NULL,
	PRODUCTO VARCHAR(100) NOT NULL,
	PRECIO NUMERIC(8,2) NOT NULL CONSTRAINT CK_VENTA_PRECIO CHECK(PRECIO>0),
	CANTIDAD INT NOT NULL CONSTRAINT CK_VENTA_CANTIDAD CHECK(CANTIDAD>0),
	IMPORTE NUMERIC(8,2) NOT NULL,
	CONSTRAINT PK_VENTA PRIMARY KEY(IDVENTA),
	CONSTRAINT FK_VENTA_CLIENTE 
		FOREIGN KEY(IDCLIENTE) REFERENCES ABC..CLIENTE	
);
GO

SELECT * FROM ABC..CLIENTE;
GO

-- Esta instruccion da error por que no existe el cliente 1000.
INSERT INTO ABC..VENTA(IDCLIENTE,PRODUCTO,PRECIO,CANTIDAD,IMPORTE)
VALUES(1000,'PAPAS X KG',4.8,5,10);
GO

-- Esta instruccion da error por que el precio es negativo.
INSERT INTO ABC..VENTA(IDCLIENTE,PRODUCTO,PRECIO,CANTIDAD,IMPORTE)
VALUES(100,'LAPTOP',-4.8,5,10);
GO

-- Esta instruccion da error por que la cantidad es negativa.
INSERT INTO ABC..VENTA(IDCLIENTE,PRODUCTO,PRECIO,CANTIDAD,IMPORTE)
VALUES(100,'LAPTOP',4.8,-5,10);
GO

-- Esta instruccion se ejecuta correctamente.
INSERT INTO ABC..VENTA(IDCLIENTE,PRODUCTO,PRECIO,CANTIDAD,IMPORTE)
VALUES(100,'LAPTOP',4.8,5,10);
GO

SELECT * FROM ABC..VENTA;
GO



