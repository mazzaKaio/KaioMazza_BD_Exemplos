drop database kaio_mazzasql;

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
	codprod varchar(8) not null,
    descricao varchar(25),
    lote varchar(10),
    validade date,
    valor decimal(10,2),
    constraint pk_produto primary key (codprod)
);

create table compra(
	codcompra varchar(5) not null,
    cpf varchar(11),
    data_compra date,
    tipo_pagamento char(1),
    constraint pk_compra primary key (codcompra),
    constraint fk_cpf_cliente foreign key (cpf) references cliente(cpf)
);

drop table item;

create table item (
	coditem char(05) not null,
    codcompra char(05),
    codprod varchar(08),
    quantidade real,
    primary key (coditem),
    foreign key (codcompra) references compra(codcompra),
    foreign key (codprod) references produto(codprod)
);

		INSERT INTO cliente 
    (cpf, nome, rua, numero, bairro, cidade, uf, sexo, profissao) 
VALUES
	('11111','Pedro','Rua XV','125','Alto XV','Curitiba','PR','M','militar'),
	('10121','Sergio Luiz','Rua Marechal','131','CIC','Guarapuava','PR','M','Professor'),
    ('10321','Aria Stark','Rua dos Valentes','901','Tatuquara','Ponta Grossa','PR','F','Médica'),
    ('13191','Brendon Stark','Rua dos Corvos','333','Cajuru','Paranaguá','PR','M','Médico'),
    ('15951','Tyrion','Rua dos Anões','171','Batel','Curitiba','PR','M','Professor'),
    ('53672','Samwell Tarly','Rua da Medicina','741','Agua Verde','Guarapuava','PR','M','Professor'),
    ('15143','John Snow','Rua Marechal Deodoro','210','Boqueirão','Ponta Grossa','PR','M','militar'),
    ('67816','Jaime Lannister','Rua 12 outubro','12','Boqueirão','Ponta Grossa','PR','M','militar'),
    ('13119','Dr House','Rua 6 de maio','310','CIC','Paranaguá','PR','M','Médico'),
    ('43156','Charles Xavier','Rua da Consolação','125','CIC','Curitiba','PR','M','Professor'),
    ('42230','Wolverine','Rua dos Malvados','900','Tatuquara','Guarapuava','PR','M','militar'),
    ('517194','Bruce Banner','Rua dos violentos','171','Parolin','Curitiba','PR','M','Médico');
	
	
	INSERT INTO produto
    (codprod, descricao,lote,validade,valor) 
VALUES
	('100','Queijo','QJ00101','20200130','12.50'),
	('200','Leite','LT00202','20200328','4.75'),
	('300','Requeijão','RQJ00303','20200325','22.81'),
	('400','Manteiga','MTG00404','20200115','9.26'),
	('500','Iogurte','IGT00505','20200329','17.35'),
	('600','Ricota','RCT00606','20200210','21.00'),
	('700','Creme de Leite','CRL00707','20200325','16.57'),
	('800','Nata','NT00808','20200115','31.26'),
	('900','Leite Condensado','LTC00909','20200325','16.57'),
	('990','Cream Cheese','CRC00909','20200325','42.31');
	
	
	INSERT INTO compra
    (codcompra,cpf,data_compra,tipo_pagamento) 
VALUES
	('500','11111','20200225','V'),
	('501','10121','20200225','V'),
	('502','10121','20200325','C'),
	('503','10321','20200325','V'),	
	('504','13191','20200216','V'),
	('505','15951','20200212','V'),
	('506','53672','20200315','C'),
	('507','15143','20200311','V'),
	('508','67816','20200309','V'),
	('509','13119','20200209','V'),
	('510','43156','20200212','V'),
	('511','42230','20200112','V'),
	('512','517194','20200125','V'),
	('513','11111','20200125','C'),
	('514','42230','20200110','V'),
	('515','13191','20200112','V'),	
	('516','11111','20200110','C'),
	('517','43156','20200119','V'),
	('518','67816','20200108','V'),
	('519','67816','20200106','V'),
	('520','15951','20200127','C'),
	('521','11111','20200101','V'),
	('522','53672','20200125','V'),
	('523','10321','20200330','V');
	
	INSERT INTO item
    (coditem,codcompra,codprod,quantidade) 
	VALUES
	('990','500','990','120'),
	('991','500','600','325'),
	('992','500','300','20'),
	('993','500','200','53'),
	('994','500','400','10'),

	('995','502','100','20'),
	('996','502','200','10'),
	('997','502','800','5'),
	('998','502','700','3'),
	
	('999','503','990','4'),
	('1000','503','500','3'),
	
	('1001','504','100','5'),
	('1002','504','900','8'),
	('1003','504','990','4'),
	
	('1004','505','100','6'),
	('1005','505','200','11'),

	('1006','506','600','23'),
	('1007','506','500','7'),
	
	('1008','507','300','9'),
	('1009','508','800','4'),
	('1010','509','400','9');