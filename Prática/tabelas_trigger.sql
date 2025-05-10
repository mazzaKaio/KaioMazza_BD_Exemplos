create database teste_trigger;

create table produtos (
	referencia varchar(3) primary key,
    descricao varchar(50) unique,
    estoque int not null
);

insert into produtos (referencia, descricao, estoque) values
("001", "Feijão", 10),
("002", "Arroz", 5),
("003", "Farinha", 15);

create table itensvenda (
	venda int,
    produto varchar(3),
    quantidade int
);

insert into itensvenda (venda, produto, quantidade) values
(1, "001", 3),
(1, "002", 1),
(1, "003", 5);

SET SQL_SAFE_UPDATES = 0;

delete from itensvenda where venda = 1 and produto = "001";