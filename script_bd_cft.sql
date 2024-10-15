
USE [CFT]
GO
/****** Object:  Table [dbo].[ALUMNO]    Script Date: 15-10-2024 16:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNO](
	[RUT_AL] [varchar](10) NOT NULL,
	[NOMBRES_AL] [varchar](500) NULL,
	[APELLIDOP_AL] [varchar](500) NULL,
	[APELLIDOM_AL] [varchar](500) NULL,
	[FECHANAC_AL] [datetime] NULL,
	[EMAIL_AL] [varchar](250) NULL,
 CONSTRAINT [PK_ALUMNO] PRIMARY KEY CLUSTERED 
(
	[RUT_AL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODULO]    Script Date: 15-10-2024 16:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODULO](
	[COD_MODULO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBREM] [varchar](500) NULL,
 CONSTRAINT [PK_MODULO] PRIMARY KEY CLUSTERED 
(
	[COD_MODULO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODULO_ALUMNO]    Script Date: 15-10-2024 16:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODULO_ALUMNO](
	[ID_MOD_AL] [int] IDENTITY(1,1) NOT NULL,
	[COD_MODULO_FK] [int] NULL,
	[RUT_AL_FK] [varchar](10) NULL,
 CONSTRAINT [PK_MODULO_ALUMNO] PRIMARY KEY CLUSTERED 
(
	[ID_MOD_AL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFESOR]    Script Date: 15-10-2024 16:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFESOR](
	[RUT_PR] [varchar](10) NOT NULL,
	[COD_MODULO_FK] [int] NULL,
	[NOMBRES_PR] [varchar](500) NULL,
	[APELLIDOP_PR] [varchar](500) NULL,
	[APELLDOM_PR] [varchar](500) NULL,
	[EMAIL_PR] [varchar](500) NULL,
	[FONO] [varchar](12) NULL,
 CONSTRAINT [PK_PROFESOR] PRIMARY KEY CLUSTERED 
(
	[RUT_PR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ALUMNO] ([RUT_AL], [NOMBRES_AL], [APELLIDOP_AL], [APELLIDOM_AL], [FECHANAC_AL], [EMAIL_AL]) VALUES (N'20417759-7', N'Felipe', N'Torres', N'Marchant', CAST(N'2000-12-10T00:00:00.000' AS DateTime), N'felipe.torres.m@gmail.com')
INSERT [dbo].[ALUMNO] ([RUT_AL], [NOMBRES_AL], [APELLIDOP_AL], [APELLIDOM_AL], [FECHANAC_AL], [EMAIL_AL]) VALUES (N'20450120-9', N'Maria', N'Gonzales', N'Fernandez', CAST(N'2000-02-19T00:00:00.000' AS DateTime), N'maria.gonzales.f@gmail.com')
INSERT [dbo].[ALUMNO] ([RUT_AL], [NOMBRES_AL], [APELLIDOP_AL], [APELLIDOM_AL], [FECHANAC_AL], [EMAIL_AL]) VALUES (N'20450569-8', N'Juan', N'Lopez', N'Rodrigues', CAST(N'2000-11-21T00:00:00.000' AS DateTime), N'juan.lopez.r@gmail.com')
INSERT [dbo].[ALUMNO] ([RUT_AL], [NOMBRES_AL], [APELLIDOP_AL], [APELLIDOM_AL], [FECHANAC_AL], [EMAIL_AL]) VALUES (N'20780596-8', N'Catalina', N'Tapia', N'Olivi', CAST(N'2000-09-11T00:00:00.000' AS DateTime), N'catalina.tapia.o@gmail.com')
INSERT [dbo].[ALUMNO] ([RUT_AL], [NOMBRES_AL], [APELLIDOP_AL], [APELLIDOM_AL], [FECHANAC_AL], [EMAIL_AL]) VALUES (N'20851569-8', N'Claudio', N'Iturra', N'Leiva', CAST(N'2000-07-12T00:00:00.000' AS DateTime), N'claudio.iturra.l@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[MODULO] ON 

INSERT [dbo].[MODULO] ([COD_MODULO], [NOMBREM]) VALUES (1, N'Aplicaciones de Bases de Datos')
INSERT [dbo].[MODULO] ([COD_MODULO], [NOMBREM]) VALUES (2, N'Taller de Programación Web')
SET IDENTITY_INSERT [dbo].[MODULO] OFF
GO
SET IDENTITY_INSERT [dbo].[MODULO_ALUMNO] ON 

INSERT [dbo].[MODULO_ALUMNO] ([ID_MOD_AL], [COD_MODULO_FK], [RUT_AL_FK]) VALUES (1, 1, N'20417759-7')
INSERT [dbo].[MODULO_ALUMNO] ([ID_MOD_AL], [COD_MODULO_FK], [RUT_AL_FK]) VALUES (2, 1, N'20450120-9')
INSERT [dbo].[MODULO_ALUMNO] ([ID_MOD_AL], [COD_MODULO_FK], [RUT_AL_FK]) VALUES (3, 1, N'20450569-8')
INSERT [dbo].[MODULO_ALUMNO] ([ID_MOD_AL], [COD_MODULO_FK], [RUT_AL_FK]) VALUES (4, 2, N'20417759-7')
INSERT [dbo].[MODULO_ALUMNO] ([ID_MOD_AL], [COD_MODULO_FK], [RUT_AL_FK]) VALUES (5, 2, N'20780596-8')
INSERT [dbo].[MODULO_ALUMNO] ([ID_MOD_AL], [COD_MODULO_FK], [RUT_AL_FK]) VALUES (6, 2, N'20851569-8')
SET IDENTITY_INSERT [dbo].[MODULO_ALUMNO] OFF
GO
INSERT [dbo].[PROFESOR] ([RUT_PR], [COD_MODULO_FK], [NOMBRES_PR], [APELLIDOP_PR], [APELLDOM_PR], [EMAIL_PR], [FONO]) VALUES (N'12580259-8', 1, N'Luis', N'Santander', N'Lopes', N'luis.santander.l@gmail.com', N'596985987')
INSERT [dbo].[PROFESOR] ([RUT_PR], [COD_MODULO_FK], [NOMBRES_PR], [APELLIDOP_PR], [APELLDOM_PR], [EMAIL_PR], [FONO]) VALUES (N'12780520-9', 2, N'Alberto', N'Gomez', N'Torres', N'alberto.gomez.t@gmail.com', N'596458741')
GO
ALTER TABLE [dbo].[MODULO_ALUMNO]  WITH CHECK ADD  CONSTRAINT [FK_MODULO_A_REFERENCE_ALUMNO] FOREIGN KEY([RUT_AL_FK])
REFERENCES [dbo].[ALUMNO] ([RUT_AL])
GO
ALTER TABLE [dbo].[MODULO_ALUMNO] CHECK CONSTRAINT [FK_MODULO_A_REFERENCE_ALUMNO]
GO
ALTER TABLE [dbo].[MODULO_ALUMNO]  WITH CHECK ADD  CONSTRAINT [FK_MODULO_A_REFERENCE_MODULO] FOREIGN KEY([COD_MODULO_FK])
REFERENCES [dbo].[MODULO] ([COD_MODULO])
GO
ALTER TABLE [dbo].[MODULO_ALUMNO] CHECK CONSTRAINT [FK_MODULO_A_REFERENCE_MODULO]
GO
ALTER TABLE [dbo].[PROFESOR]  WITH CHECK ADD  CONSTRAINT [FK_PROFESOR_REFERENCE_MODULO] FOREIGN KEY([COD_MODULO_FK])
REFERENCES [dbo].[MODULO] ([COD_MODULO])
GO
ALTER TABLE [dbo].[PROFESOR] CHECK CONSTRAINT [FK_PROFESOR_REFERENCE_MODULO]
GO
USE [master]
GO
ALTER DATABASE [CFT] SET  READ_WRITE 
GO
