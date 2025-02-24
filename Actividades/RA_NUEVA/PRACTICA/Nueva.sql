
-- Base de datos usada alumne
create table alumne (
    dni char(9) primary key,
    nom varchar(20),
    edad INTEGER
);
 
create table asignatura (
    codi integer primary key,
    nom varchar(20)
);
 
create table fer(
    dni char(9),
    codi integer,
    constraint pk_fer primary key(dni, codi),
    constraint fk_fer_alumne foreign key (dni) references alumne(dni),
    constraint fk_fer_asign foreign key (codi) references asignatura(codi)
);

select alumne.nom,asignatura.nom from alumne,asignatura,fer where fer.dni=alumne.dni and fer.codi=asignatura.codi;
 
insert into alumne values ('11111A', 'Carlos',20);
insert into asignatura values (484, 'BBDD');
insert into fer values ('11111A', 484);
insert into alumne values('2AAAAB','Set');
insert into asignatura values(798,'English');
-- da fallos 
insert into alumne values('11111B','Jordi');
-- da fallos 
insert into fer values('2AAAAB',798);