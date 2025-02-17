create table proves (
    id integer,
    data1 date,
    data2 datetime
);

-- En mysql las fechas sigue el formato año mes dia
insert into proves values (1,'2006-10-21','2025/2/10 12:26');

insert into proves 
values (4,now(),now());

-- Muestra el mes 2
select * from proves where month(data1)=2;

select * data_format month(data1, 'Hola K ase %y')

select datediff(now(), data1) from proves;

select timestampdiff()
