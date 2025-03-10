create table persona(
	dni char(9) primary key,
	nom varchar(20),
	email varchar(20),
	dni_jefe char(9),
	constraint fk_empl_jefe FOREIGN key (dni_jefe) references persona(dni)
);
 
 
insert into persona values('11111A', 'Akasha', 'akasha@itic', NULL);
insert into persona values('22222B', 'Carlos', 'carlos@itic', '11111A');
 
insert into persona values('33333C', 'Wael', 'wael@itic', '22222B');
 
insert into persona values('44444D', 'Alvaro', 'alvaro@itic', '11111A');

-- Mostrar el nom de tots els empleats 
select nom from persona;
-- Mostrar el dni,el nom i el dni de jefe de tots els empleats.
select from dni,nom,dni_jefe from persona;
-- Mostrar el nom i el nom d'el jefe.
select PA.nom,PB.nom from persona PA,persona PB where PA.dni_jefe=PB.dni;

-- Superheroi

-- Mostra el nom del superheroi i el color de ulls dels superherois que el nom contigui j
-- Primero se muestra la tabla de primaria y luego el mull
-- Luego se pone = y se pone id y su la tabla
select nom_superheroi,color from superheroi,color where superheroi.id_color_ulls=color.id 
and nom_superheroi like '%j%';

-- Mostrar el nom i el color de cabell
select nom_superheroi,color from superheroi,color where superheroi.id_color_cabell=color.id
and nom_superheroi like '%j%';

-- Mostrar nom,color d'ulls i color de cabell
select nom_superheroi,u.color,p.color from superheroi,color u,color p where id_color_ulls=u.id
and id_color_cabell=p.id;

create table coche(
	matricula char(7) primary key,
	marca varchar(20),
	model varchar(20),
	dni char(9),
	constraint fk_coche_prop FOREIGN key (dni) references
		persona(dni)
);
insert into coche values('b1111A','Tesla', 'S', '11111A');
insert into coche values('b2222B','Lambo', 'Huracan', '22222B');
insert into coche values('b3333C','Ferrari', 'Spider', '22222B');
insert into coche values('b4444D','Seat', 'Picasso', '44444D');



