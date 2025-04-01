-- problemes superherois 13 al 16
 
-- problema 9
select *
from editorial
where nom_editorial like 'M%' or nom_editorial like '%s';
 
 
-- problema 10
select *
from raca
where raca NOT like '%a%';
 
-- problema 11
select nom_superheroi, pes_kg, alcada_cm
from superheroi
where (nom_superheroi like 'b%' or alcada_cm>300)
     and pes_kg>=120;
     
-- problema 13
select 
    nom_superheroi, 
    pes_kg,
    round (pes_kg * 2.20462, 2) as lliures
from superheroi
where pes_kg>300;
 
-- problema 14
select *
from raca
where instr(raca, 'a')=0;
 
-- problema 15
select *
from superpoder
where substring(nom_poder,3,1)='o';
 
select *
from superpoder
where nom_poder like '__o%';
 
 
-- *************************************
--          UNIÓ DE TAULES (JOIN)
-- *************************************
 
-- problema 21
select nom_superheroi, genere
from superheroi, genere
where superheroi.id_genere = genere.id
 and pes_kg between 60 and 70;
 
 -- Per al dilluns 17
 -- problemes 22 a 25
 
 -- problema 22
 select nom_superheroi, nom_editorial
 from superheroi, editorial
 where superheroi.id_editorial = editorial.id;
 
-- problema 23
select nom_superheroi, color
from superheroi, color
where superheroi.id_color_ulls = color.id
and color like '%blau%';
 
 
select nom_superheroi, color
from superheroi 
        join color on (superheroi.id_color_ulls=color.id)
where color like '%blau%';
 
 
-- problema 24
select nom_superheroi, nom_atribut
from superheroi,
    atribut,
    atribut_heroi
where atribut_heroi.heroi_id = superheroi.id AND
    atribut_heroi.atribut_id = atribut.id AND
    nom_atribut like '%intel·ligència%';
 
select nom_superheroi, nom_atribut
from superheroi 
    join atribut_heroi on (atribut_heroi.heroi_id = superheroi.id)
    join atribut on (atribut_heroi.atribut_id = atribut.id)
where nom_atribut like '%intel·ligència%';
 
-- Problema 38
select nom_editorial from editorial;
 
select char_length(nom_editorial) as longitud from editorial;
 
select max(longitud)
from (
    select char_length(nom_editorial) as longitud 
    from editorial
) x;
 
 
-- Problema 40
 
select nom_superheroi
from superheroi
where id_color_ulls =(
    select id_color_ulls from superheroi
    where nom_superheroi = 'Chewbacca'
)
and id_color_cabell = (
    select id_color_cabell from superheroi
    where nom_superheroi = 'Chewbacca'
)
and nom_superheroi<>'Chewbacca';
 
-- problema 41
 
select nom_superheroi, pes_kg
from superheroi
where pes_kg> (
    select avg(pes_kg) from superheroi
);
 
 
 
 
 
 
select nom_superheroi, pes_kg
from superheroi
where pes_kg> (
    select avg(pes_kg) 
    from superheroi join raca on (superheroi.id_raca = raca.id)
    where raca = 'Saiyan'
);
 
 
 
select nom_superheroi, pes_kg
from superheroi
where pes_kg> ( 
    select avg(pes_kg)
    from superheroi
    where id_raca = (
            select id from raca where raca='Saiyan'
    )
);
