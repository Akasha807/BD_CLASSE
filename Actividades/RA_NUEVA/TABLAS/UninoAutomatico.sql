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

-- Amb SQL 99
-- Join Natural Join -- > IGUALA AUTOMÀTICAMENT ELS
                    -- ATRIBUTS AMB ELS MATEIX NOM A LES
                    -- DOS TAULES
select marca,model,nom from persona Natural Join coche;

-- AMB SQL 99
-- JOIN using -->De tots el atributs que 
                -- tenen el mateix nom a les DOS
                -- taules, podem indicar quin o quins
select marca,model,Nom from persona Join coche using(dni);
-- AMB sql 99
-- JOIN on --> Fem la unió de forma manual indicat
            -- como es realitza
select marca,model,nom from persona Join coche on (coche.dni=persona.dni);


