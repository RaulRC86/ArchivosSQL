--------Ingrese 2 profesores, uno en cada módulo-----------

INSERT INTO [dbo].[PROFESOR]([RUT_PR],[COD_MODULO_FK],[NOMBRES_PR],[APELLIDOP_PR],[APELLDOM_PR],[EMAIL_PR],[FONO])
     VALUES ('12580259-8', 1 , 'Luis','Santander','Lopes','luis.santander.l@gmail.com',+596985987)
GO
INSERT INTO [dbo].[PROFESOR]([RUT_PR],[COD_MODULO_FK],[NOMBRES_PR],[APELLIDOP_PR],[APELLDOM_PR],[EMAIL_PR],[FONO])
     VALUES ('12780520-9', 2 , 'Alberto','Gomez','Torres','alberto.gomez.t@gmail.com',+596458741)
GO

SELECT * FROM PROFESOR