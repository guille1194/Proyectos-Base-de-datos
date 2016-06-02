create database exposicion

use exposicion

create table participante(
NombrePart varchar(30),
idPart int Primary Key,
Carrera varchar(30),
escuelaProc varchar(30),
AreaEsp varchar(30),
Tema varchar(30)
);

insert into participante values('Jose Lopez', 1, 'ISC', 'ITT', 'Sistemas', 'Aplicaciones moviles')
insert into participante values('Laura Gomez', 2, 'ITIC', 'ITT', 'Sistemas', 'Auditoria informatica')
insert into participante values('Jose Lopez', 3, 'Arquitectura', 'ITT', 'Diseño', 'Arquitectura del paisaje')
insert into participante values('Luis Vazquez', 4, 'CP', 'UABC', 'Contaduria', 'ISR')

alter table participante alter column escuelaProc varchar(99)

update participante set escuelaProc = 'Instituto Tecnologico de Tijuana'
where escuelaProc = 'ITT'

select * from participante;

delete from participante where AreaEsp = 'Diseño'

select * from participante;

insert into participante values('Guillermo Navarro', 5, 'ISC', 'Instituto Tecnologico de Tijuana', 'Sistemas', 'DML y SQL')

select * from participante;

select * from participante where escuelaProc = 'Instituto Tecnologico de Tijuana';
select * from participante where escuelaProc = 'UABC';

delete from participante where escuelaProc = 'UABC'

select * from participante;