create database kaiomazza_join;

use kaiomazza_join;

create table Tabela_A(
	Nome varchar(50) null
);

create table Tabela_B(
	Nome varchar(50) null
);

insert into Tabela_A values
	("Fernanda"),
    ("Josefa"),
    ("Luiz"),
    ("Fernando");
    
insert into Tabela_B values
	("Carlos"),
    ("Manoel"),
    ("Luiz"),
    ("Fernando");

select * from Tabela_A;

select a.Nome, b.Nome from Tabela_A as A inner join Tabela_B as B on a.Nome = b.Nome;

select a.Nome, b.Nome from Tabela_A as A left join Tabela_B as B on a.Nome = b.Nome;

select a.Nome, b.Nome from Tabela_A as A right join Tabela_B as B on a.Nome = b.Nome;

/*select a.Nome, b.Nome from Tabela_A as A full outer join Tabela_B as B on a.Nome = b.Nome;*/