create database kaio_mazzasql;

use kaio_mazzasql;

create table cliente(
	cpf varchar(11) not null,
    nome varchar(48),
    rua varchar(30),
    numero varchar(4),
    bairro varchar(30),
    cidade varchar(20),
    uf char(2),
    sexo char(1),
    profissao char(15),
    constraint pk_cliente primary key (cpf)
);

create table produto(
	cod_prod varchar(8) not null,
    descricao varchar(25),
    lote varchar(10),
    validade date,
    valor real,
    constraint pk_produto primary key (cod_prod)
);

create table compra(
	cod_compra varchar(5) not null,
    cpf varchar(11),
    cod_item char(5),
    data_compra date,
    tipo_pagamento char(1),
    constraint pk_compra primary key (cod_compra),
    constraint fk_cod_item foreign key (cod_item) references produto(cod_prod),
    constraint fk_cpf_cliente foreign key (cpf) references cliente(cpf)
);

create table item (
	cod_item char(5) not null,
    cod_compra char(5),
    cod_prod varchar(8),
    quantidade real,
    constraint pk_item primary key (cod_item),
    constraint fk_cod_compra foreign key (cod_compra) references compra(cod_compra),
    constraint fk_cod_prod foreign key (cod_prod) references produto(cod_prod)
);