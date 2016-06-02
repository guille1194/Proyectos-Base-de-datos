/*Examen TBD Unidad I, II*/
/*Navarro Mancillas Guillermo*/
create database Empresa3

use Empresa3

exec sp_addtype entero, 'int'
exec sp_addtype caracter, 'text'

create table Empleado(
No_emp int,
Nombre varchar(30),
Apellido varchar(30),
Puesto varchar (30),
Sueldo decimal (8,2),
Actividades varchar(30),
Horario varchar(30),
carrera varchar(30) default 'Arquitectura',
primary key(No_emp)
);

create table Puesto(
No_puesto int primary key,
Puesto varchar (30),
Sueldo decimal (8,2),
Horario varchar(30),
No_emp int foreign key (No_emp) references empleado (No_emp)
);

create table Carrera(
No_carrera int primary key,
carrera varchar(30) default 'Arquitectura',
No_emp int foreign key (No_emp) references empleado (No_emp)
);

create table Sueldo(
Puesto varchar (30),
Sueldo decimal (8,2),
Actividades varchar(30),
Horario varchar(30),
No_emp int foreign key (No_emp) references empleado (No_emp)
);

insert into Empleado values(1, 'Guillermo','Navarro', 'Desarrollador', 12000, 'Elaboracion', '1:00pm a 8:00pm', default);
select * from Empleado;

insert into Puesto values(1, 'Desarrollador', 12000, '1:00pm a 8:00pm', 1);
select * from Puesto;

alter table Empleado add direccion varchar(30);

exec sp_help
exec sp_helpconstraint Empleado

create rule reglalimsueldo as '@sueldo' like ['']
exec sp_bindrule 'regla' 

