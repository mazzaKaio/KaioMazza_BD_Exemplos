create database Aula_Vendas;

use Aula_Vendas;

create table Cliente(
	CodCliente integer not null,
    NomeCliente varchar(50),
    Endereco varchar(80),
    Cidade varchar(50),
    CEP varchar(10),
    UF char(2),
    CNPJ varchar(30),
    InscEstadual integer(10),
    constraint pk_cliente primary key (CodCliente)
);	

create table Vendedor(
	CodVendedor integer not null,
    NomeVendedor varchar(50),
    SalarioFixo decimal(10, 2),
    FaixaComissao char(2),
    constraint pk_vendedor primary key (CodVendedor)
);

create table Produto(
	CodProduto integer not null,
    UnidProduto varchar(10),
    DescProduto varchar(50),
    ValorUnitario decimal(15, 2),
    constraint pk_produto primary key (CodProduto)
);

create table Pedido(
	NumPedido integer not null,
    PrazoEntrega integer(10),
    Cod_Cliente integer not null,
    Cod_Vendedor integer not null,
    constraint pk_numpedido primary key (NumPedido),
    constraint fk_codcliente foreign key (Cod_Cliente) references Cliente(CodCliente),
    constraint fk_codproduto foreign key (Cod_Vendedor) references Vendedor(CodVendedor)
);

create table Item_Pedido(
	Num_Pedido integer not null,
    Cod_Produto integer not null,
    QtdeProduto integer not null,
    constraint fk_numpedido_pedido foreign key (Num_Pedido) references Pedido(NumPedido),
    constraint fk_codproduto_produto foreign key (Cod_Produto) references Produto(CodProduto)
);

drop table item_pedido;

insert into CLIENTE(CodCliente,NomeCliente,Endereco,Cidade,CEP,UF,CNPJ,InscEstadual)
VALUES
(720,'Ana','Rua 17 n. 19','Niteroi','24358310','RJ',12113231/0001-34,2134),
(870,'Flavio','Av. Pres Vargas 10','São Paulo','22763931','SP',2253412693879,4631),
(110,'Jorge','Rua Caiapó 13','Curitiba','30078500','PR',1451276498349,null),
(222,'Lúcia','Rua Itabira 123 loja 09','Belo Horizonte','22124391','MG',2831521393488,2985),
(830,'Mauricio','Av Paulista 1236 sl/2345','São Paulo','3012683','SP',3281698574656,9343),
(130,'Edmar','Rua da Prais s/n','Salvador','30079300','BA',234632842349,7121),
(410,'Rodolfo','Largo da Lapa 27 sobrado','Rio de Janeiro','30078900','RJ',1283512823469,7431),
(20,'Beth','Av Climério n. 45','São Paulo','25679300','SP',3248512673268,9280),
(157,'Paulo','Tv. Moraes c/3','Londrina',null,'PR',328482233242,1923),
(180,'Livio','Av. Beira Mar n.1256','Florianópolis','30077500','SC',1273657123474,null),
(260,'Susana','Rua Lopes Mendes 12','Niterói','30046500','RJ',217635712329,2530),
(290,'Renato','Rua Meireles n. 123 bl.2 sl.345','São Paulo','30225900','SP',1327657112314,1820),
(390,'Sebastião','Rua da Igreja n. 10','Uberaba','30438700','MG',321765472133,9071),
(234,'José','Quadra 3 bl. 3 sl 1003','Brasilia','22841650','DF',2176357612323,2931);

insert into pedido(NumPedido,PrazoEntrega,Cod_Cliente,Cod_Vendedor)
VALUES
(121,20,410,209),
(97,20,720,101),
(101,15,720,101),
(137,20,720,720),
(148,20,720,101),
(189,15,870,213),
(104,30,110,101),
(203,30,830,250),
(98,20,410,209),
(143,30,20,111),
(105,15,180,240),
(111,20,260,240),
(103,20,260,11),
(91,20,260,11),
(138,20,260,11),
(108,15,290,310),
('209',20,260,240), 
(119,30,390,250),
(127,10,410,11);

INSERT INTO `vendedor`
(`CODVENDEDOR`, `NOMEVENDEDOR`, `SALARIOFIXO`, `FAIXACOMISSAO`) 
VALUES 
('209', 'José', 1800.00, 'C'),
('111', 'Carlos', 2490.00, 'A'),
('11', 'João', 2780.00, 'C'),
('240', 'Antonio', 9500.00, 'C'),
('720', 'Felipe', 4600.00, 'A'),
('213', 'Jonas', 2300.50, 'A'),
('101', 'João', 2650.32, 'C'),
('310', 'Josias',870.00,'B'),
('250', 'Mauricío',2930.00, 'B');

insert into PRODUTO(CodProduto,UnidProduto,DescProduto,ValorUnitario)
VALUES
(25,'Kg','Queijo',0.97),
(31,'Bar','Chocolate',0.87),
(78,'L','Vinho',2),
(22,'M','Linho',0.11),
(30,'SAC','Açucar',0.30),
(53,'M','Linha',1.80),
(13,'G','Ouro',6.18),
(45,'M','Madeira',0.25),
(87,'M','Cano',1.97),
(77,'M','Papel',1.05);

insert into ITEM_PEDIDO(Num_Pedido,Cod_Produto,QtdeProduto)
VALUES
(121,25,10),
(121,31,35),
(97,77,20),
(101,31,9),
(148,45,8),
(148,31,7),
(148,77,3),
(148,25,10),
(148,78,30),
(104,53,32),
(203,31,6),
(189,78,45),
(143,31,20),
(105,78,10),
(111,25,10),
(111,78,70),
(103,53,37),
(91,77,40),
(138,22,10),
(138,77,35),
(138,53,18),
(108,13,17),
(119,77,40),
(119,13,6),
(119,22,10),
(119,53,43),
(137,13,8),
(143,78,10),
(101,78,18);