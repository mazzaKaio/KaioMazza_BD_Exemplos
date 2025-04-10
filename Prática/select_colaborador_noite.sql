select * from colaborador_noite;

select nome_completo from colaborador_noite where nome_completo like "Fisher%";

select nome_completo from colaborador_noite where upper(nome_completo) like "%LE%";

select nome_completo, salario, data_admissao from colaborador_noite where extract(month from data_admissao) = 08; 

select nome_completo, salario, data_admissao from colaborador_noite where extract(year from data_admissao) = 1991 order by nome_completo; 

select nome_completo, salario from colaborador_noite order by salario asc;
select nome_completo, salario from colaborador_noite order by salario desc;

select nome_completo, salario from colaborador_noite order by salario desc limit 10;

select nome_completo, salario from colaborador_noite order by salario desc limit 4,6;

select avg(salario) as salario_avg from colaborador_noite;

select min(salario) as salario_min from colaborador_noite;

select max(salario) as salario_max from colaborador_noite;

select sum(salario) as salario_total from colaborador_noite;

select count(*) as nr_depto from colaborador_noite;

select nr_depto, avg(salario) as "media salarial por depto" from colaborador_noite group by nr_depto having avg(salario) > (select avg(salario) from colaborador_noite) order by nr_depto;