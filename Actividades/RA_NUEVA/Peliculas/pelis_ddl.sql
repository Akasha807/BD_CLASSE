
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

-- problema 1
select * from pelicula where vots>1000;

-- problema 2


-- problema 3
select * from pelicula
where vots between 5000 and 6000;
-- problema 4
select * from where anyo >= 1990 and anyo <= 2000 and puntuacio > 9.4 or vots >= 8000 and vots <= 9000;

-- Para ver los nulls 
-- Debemos poner el comando is null (select * from id is NULL)

-- Cuando no sabemos como se llama exactamente el nombre o otra cosa
-- Usamos like (select * from where nom like 'Minerva%')
-- Usamos % para que luego tenga lo que sea  (select * from like a% )
-- Usamos el _ la siguiente sea letra (select * from like '%a_' )
-- Usamos order by para ordenar lo de manera que tu quiera desc decrciente asc (select * from porfe by nom DESC;)
-- Si no ponemos nada es creciente 
-- 
-- En caso en concat este null todo sera null

select nom from porfe + char.length('Hola Soy' + nom);

-- problema 6
select nom
from actor 
where nom like 'will %';

-- problema 7
-- Si lo ponemos eso significaria que %k sea el primero
select nom
from actor like'%k%w%z%';

-- Que tenga una de las tres sin importar cual esta antes
select nom
from actor like'%k%' and like '%w%' and like '%z%';

-- Que tenga una de esta o ninguna 


select nom
from actor like'%k%' xor like '%w%';
-- probleam 8
select nom
from actor like'%w%w%';

-- problem 9
select nom 
