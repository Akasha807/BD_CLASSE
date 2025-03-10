create table proves (
    id integer,
    data1 date,
    data2 datetime
);

-- En mysql las fechas siguen el formato año mes día
insert into proves values (1, '2006-10-21', '2025-02-10 12:26:00');
insert into proves values (4, now(), now());

-- Muestra el mes 2
select * from proves where month(data1) = 2;

-- Formatea la fecha
select DATE_FORMAT(data1, 'Hola K ase %y') from proves;

-- Diferencia de días
select datediff(now(), data1) from proves;

-- Diferencia de timestamp en días
select TIMESTAMPDIFF(DAY, data1, data2) from proves;

