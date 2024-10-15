/*==============================================================*/
/* Table: ALUMNO                                                */
/*==============================================================*/
create table ALUMNO (
   RUT_AL               varchar(10)          not null,
   NOMBRES_AL           varchar(500)         null,
   APELLIDOP_AL         varchar(500)         null,
   APELLIDOM_AL         varchar(500)         null,
   FECHANAC_AL          datetime             null,
   EMAIL_AL             varchar(250)         null,
   constraint PK_ALUMNO primary key (RUT_AL)
)
go

/*==============================================================*/
/* Table: MODULO                                                */
/*==============================================================*/
create table MODULO (
   COD_MODULO           int                  identity,
   NOMBREM              varchar(500)         null,
   constraint PK_MODULO primary key (COD_MODULO)
)
go

/*==============================================================*/
/* Table: MODULO_ALUMNO                                         */
/*==============================================================*/
create table MODULO_ALUMNO (
   ID_MOD_AL            int                  identity,
   COD_MODULO_FK        int                  null,
   RUT_AL_FK            varchar(10)          null,
   constraint PK_MODULO_ALUMNO primary key (ID_MOD_AL)
)
go

/*==============================================================*/
/* Table: PROFESOR                                              */
/*==============================================================*/
create table PROFESOR (
   RUT_PR               varchar(10)          not null,
   COD_MODULO_FK        int                  null,
   NOMBRES_PR           varchar(500)         null,
   APELLIDOP_PR         varchar(500)         null,
   APELLDOM_PR          varchar(500)         null,
   EMAIL_PR             varchar(500)         null,
   FONO                 varchar(12)          null,
   constraint PK_PROFESOR primary key (RUT_PR)
)
go

alter table MODULO_ALUMNO
   add constraint FK_MODULO_A_REFERENCE_MODULO foreign key (COD_MODULO_FK)
      references MODULO (COD_MODULO)
go

alter table MODULO_ALUMNO
   add constraint FK_MODULO_A_REFERENCE_ALUMNO foreign key (RUT_AL_FK)
      references ALUMNO (RUT_AL)
go

alter table PROFESOR
   add constraint FK_PROFESOR_REFERENCE_MODULO foreign key (COD_MODULO_FK)
      references MODULO (COD_MODULO)
go

