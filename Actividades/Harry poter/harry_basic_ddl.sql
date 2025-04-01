DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS profe;
DROP TABLE IF EXISTS estudiant;
DROP TABLE IF EXISTS casa;

create table casa (
  id integer primary key auto_increment,
  nom varchar(50) not null
) engine=innodb;


create table profe (
  id integer primary key auto_increment,
  nom varchar(50),
  casa_id integer,
  constraint fk_profe_casa foreign key (casa_id) references casa(id)
)engine=innodb;


create table classes (
  id integer primary key auto_increment,
  materia varchar(50),
  profe_id integer,
  constraint fk_classe_profe foreign key (profe_id) references profe(id)
)engine=innodb;


create table estudiant (
  id integer primary key auto_increment,
  nom varchar(50) not null,
  anyo integer not null,
  casa_id integer,
  constraint fk_estudiant_casa foreign key (casa_id) references casa(id)
)engine=innodb;

-- Mostra el nom de la classe amb el nom del professor/a que la imparteix
select estudiant.nom,profe.nom from estudiant,profe where profe.casa_id=estudiant.id;

-- Mostra el nom de la classe amb el nom del professor/a
-- que la imparteix i el nom de la casa a la que pertany el professor/a

select profe.nom,estudiant.nom,casa.nom from estudiant,profe,casa where profe.casa_id=estudiant.id 
and profe.casa_id=casa.id;

 select concat('Hola! Soy', nom , ',k ase?') saludo from profe;
 select concat('Hola Soy ', upper nom , ',k ase?') saludo from profe;

 select profe.nom,casa.nom from profe join casa on(profe.casa_id=casa.id);(4)
 select * from profe;(10)

 select profe.nom,casa.nom from profe left outer join casa on(profe.casa_id=casa.id);

 select profe.nom,casa.nom from profe right outer join casa on(profe.casa_id=casa.id);
 select profe.nom,coalesce(casa.nom,'Ni idea') from profe left outer join casa on(profe.casa_id=casa.id);