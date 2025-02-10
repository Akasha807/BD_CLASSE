insert into t3(dni,nom,email,sou)
values ('1111A','Jordi','jordi@iticbcn.cat',100.25);

-- A la clave primaria siempre se le debe poner un valor 
insert into t5(marca,model,matricula)
values('Seat','Ibiza','B111A');

delete from t5
where marca ='
zz';
-- Modo seguro 
set sql_safe_updates=1;
