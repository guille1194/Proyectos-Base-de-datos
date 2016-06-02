create database Examen2

use Examen2

/*1*/
create table Estudiante
(
	NoControl int,
	nombre varchar(30),
	carrera  varchar(10),
	direccion varchar (40),
	ciudad varchar (10),
	estado varchar (10),
	prom int,
 	IdEsc int foreign key (IdEsc) references Escuela (IdEsc)  
);

create table Escuela
(
	IdEsc int primary key,
	Nombre varchar (10)
);

/*2*/
insert into Estudiante values(15210621, 'Juan Luis Lopez', 'ISC', 'Ave Otay #30', 'Tijuana', 'B.C.', 85, 1)
insert into Estudiante values(14210314, 'Jose Luis Avalos', 'Medicina', 'calle 15 Sep #40', 'Ensenada', 'B.C.', 90, 3)
insert into Estudiante values(15210614, 'Jose Ruiz', 'ISC', 'calle Guadalupe #120', 'GDL', 'Jalisco', 99, 1)

insert into Escuela values (1, 'I.T.T')
insert into Escuela values (2, 'ITESM')
insert into Escuela values (3, 'UNAM')

/*3*/
select count (ciudad) as [total de registros por ciudad], count (estado) as [total de registros por estado] from Estudiante group by ciudad

/*4*/
select count (ciudad) as [total de registros por ciudad], count (estado) as [total de registros por estado] from Estudiante where sum (carrera('ISC' or 'Medicina') >= 2)

/*5*/
select * from Estudiante where carrera = 'ISC' order by ciudad

/*6*/ 
select count (ciudad) as [Estudiantes por ciudad], COUNT(nombre) as[Total de estudiantes]  from Estudiante 

/*7*/
select ciudad, estado, carrera from Estudiante 

/*8*/
create view vista1 as
select nombre, carrera from Estudiante where nombre = 'Jose' and carrera = 'Medicina'
select * from vista1

/*9*/
create view vista2 as 
select prom, carrera from Estudiante where prom > 80 and carrera = 'ISC'
select * from vista2

/*10*/
create view vista3 as
select NoControl, carrera, direccion, ciudad, estado, prom from Estudiante inner join Escuela on Estudiante.IdEsc = Escuela.IdEsc
select * from vista3