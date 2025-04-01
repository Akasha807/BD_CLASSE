-- problema 1
select count(id_raca) from superheroi;

--problema 2
select nom_editorial,avg(alcada_cm)
from editorial,superheroi
where superheroi.id_editorial=editorial.id
group by nom_editorial;