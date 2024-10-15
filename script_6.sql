select A.RUT_AL,A.EMAIL_AL
from ALUMNO A
	inner join MODULO_ALUMNO MA
		on A.RUT_AL = MA.RUT_AL_FK
where MA.COD_MODULO_FK = 1

select *
from MODULO_ALUMNO