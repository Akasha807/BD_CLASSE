-- problema 1
select nom_poder from superpoder order by nom_poder;

-- problema 2
select * from superheroi where alcada_cm > 220;

-- problema 3
select * from superheroi where alcada_cm is null 
and pes_kg is null;

-- problema 4
select nom_superheroi,pes_kg from superheroi
where pes_kg > 120 and alcada_cm < 170;

-- problem 5
select * from superheroi where pes_kg > 60 and pes_kg < 65;
select * from superheroi where pes_kg > 60 between pes_kg < 65;

-- problema 6
select * from superheroi where pes_kg > 300  order by pes_kg DESC;

-- problema 7
select nom_superheroi, pes_kg * 2.20462 as pes_libras
from superheroi where pes_kg > 300;

-- problema 8
select nom_poder from superpoder where nom_poder like '%control%';

-- problema 9
select * from editorial where nom_editorial like 'M%'
and nom_editorial like '%s';

-- problema 10
select * from raca where raca not like '%a%';

-- problema 11
select nom_superheroi,pes_kg,alcada_cm from superheroi 
where (nom_editorial like 'b%' and or alcada_cm > 300 )
and pes_kg >= 120;

-- problema 12
select color from color where (color like 'B%' or color like '%k')
and color not like '%a%';

-- problema 13
select nom_superheroi,round(pes_kg * 2.20462,2) as kg from lliures
where pes_kg > 300;

-- problema 14
-- Si el resultado es 0 , es decir que no hay a.
select * from raca where instr(raca,'a') = 0;

-- problema 15
-- Hacemos el substring poniendo el nombre,posicio,inical y = la letra
select * from superpoder where substring(nom_poder,3,1)='o';

-- problema 16
select * from superheroi
where char_length(nom_superheroi) > 10;

-- problema 17
select * from editorial where char_length(nom_editorial) > 10 
order by char_length(nom_editorial);


-- problema 21

select superheroi.nom_superheroi,genere.genere
from superheroi,genere
where superheroi.id_genere = genere.id
and pes_kg > 60 and pes_kg < 65;

-- problema 22
select superheroi.nom_superheroi,editorial.nom_editorial
from superheroi,editorial
where superheroi.id_editorial=editorial.id;

--problema 23
select *
from superheroi,color
where superheroi.id_color_ulls=color.id
and color like 'Blau';

-- problema 24

-- probleam 25
select superheroi.nom_superheroi,genere.genere,raca.raca
from superheroi,raca,genere
where superheroi.id_raca = raca.id
and superheroi.id_genere=genere.id;

-- problema 26
select *
from superheroi,color,editorial
where superheroi.id_color_ulls=color.id
and superheroi.id_editorial = editorial.id
and color.color like '%Blau%'
and editorial.nom_editorial like '%Marvel Comics%';

-- problema 31
select count(nom_superheroi)
from superheroi;

-- problema 32 
select max(alcada_cm) from superheroi;

-- problema 33
select nom_superheroi,count(superpoder) as total
from superheroi,superpoder
where superheroi
