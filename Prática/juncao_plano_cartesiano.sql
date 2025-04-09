create table profissao(
	cod_profissao int not null,
    nome_profissao varchar(60) not null
);

insert into profissao(cod_profissao, nome_profissao) values
	(0025, "Programador"),
    (0026, "Analista de BD"),
    (0027, "Suporte"),
    (0028, "Estagiario");

create table cliente1(
	cod_cliente int not null,
    nome_cliente varchar(60) not null,
    data_nascimento date,
    telefone char (9),
    cod_profissao int,
    primary key (cod_cliente),
    foreign key (cod_profissao) references profissao(cod_profissao)
);

drop table cliente1;

insert into cliente1(cod_cliente, nome_cliente, data_nascimento, telefone, cod_profissao) values
	(121, "Rafael Magazineluiza", "1980-09-20", "3456-7890", "0025"),
    (122, "Eberth do GTA RP", "1972-01-22", "3456-7891", "0026"),
    (123, "Caio Bandolero", "1983-04-29", "3456-7892", "0027"),
    (124, "Daniel Metal Gear Solid", "1990-01-12", "3456-7894", "0028"),
    (125, "Kaio Ledezma", "1901-10-10", "4002-8922" "0025");
    
create table pedido(
	num_pedido int not null,
    cod_cliente int,
    tot_pedido decimal(10,2),
    primary key (num_pedido),
    foreign key (cod_cliente) references cliente1(cod_cliente)
);

select * from cliente1, profissao;

select nome_cliente, nome_profissao from cliente1, profissao where profissao.cod_profissao = cliente1.cod_profissao;