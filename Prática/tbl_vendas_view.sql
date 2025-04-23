create table Vendas_view(
	Qtde int not null,
    Preco decimal (10, 2)
);

insert into vendas_view (Qtde, Preco) values
(3, 5.45),
(10, 45),
(20, 3.50),
(8, 9.87);

select * from v where Qtde=20;