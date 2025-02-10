-- Hecho con la base de datos de pelis
DROP TABLE IF EXISTS `reparto`;
DROP TABLE IF EXISTS `actor`;
DROP TABLE IF EXISTS `pelicula`;


CREATE TABLE `actor` (
  `id` int NOT NULL,
  `nom` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `pelicula` (
  `id` int NOT NULL,
  `titol` varchar(70) DEFAULT NULL,
  `anyo` int DEFAULT NULL,
  `puntuacio` float DEFAULT NULL,
  `vots` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `reparto` (
  `pelicula_id` int ,
  `actor_id` int ,
  `ordre` int ,
  PRIMARY KEY (`pelicula_id`,`actor_id` ),
  foreign key (`pelicula_id`) references pelicula(id),
  foreign key (`actor_id`) references actor(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Problema 1
insert into pelicula
values (1,'Lo que el viento se llevó',1939,8.5,5000);

-- Problema 2
-- Prq no podemos repetir la clau primaria
insert into pelicula
values (1,'Matrix',1998,7.1,6400);

-- Problema 3
-- Poner en una 2 valores 
insert into pelicula values
    (2,'Matrix',1998,7.1,6400)
    (3,'Constantine',2005,6.5,2000);

-- Problema 4
update pelicula
set anyo=1999
where id=2;

--Problema 5
update pelicula
set puntuacio=puntuacio + 3.0
where vots > 4000;

--Problema 6
update pelicula
set puntuacio= puntuacio * 0.02
where anyo<2000;

--Problem 9
delete from pelicula
where id=1;

-- Si queremos insertar mas cosas podemos hacer
select nom,anyo from estudiant;

-- Podemos calcular
select nom,anyo,anyo + 1 from estudiant;
-- Podemos poner alias
select nom as nombrecito from actor;