use kaiomazzasql;

/*1*/
select produto.descricao, produto.codprod, item.quantidade, item.coditem from item
inner join produto 
on item.codprod = produto.codprod where item.quantidade > 12;

/*2*/
select cliente.nome, cliente.cpf, produto.descricao, produto.codprod, item.quantidade, item.coditem from produto
inner join item
on produto.codprod = 100 and produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on cliente.cpf = compra.cpf
where item.quantidade > 23;

/*3*/
select cliente.nome, cliente.cidade, produto.validade from cliente
inner join compra
on cliente.cpf = compra.cpf
inner join item
on item.codcompra = compra.codcompra
inner join produto
on compra.codproduto = produto.codproduto
where produto.validade = (extract(month );

/*4*/
select nome, cidade, sexo from cliente
where cidade like "Guarapuava" and sexo like "M";

/*5*/
select nome, cidade, sexo from cliente
where cidade like "G%" or cidade like "C%"
;

/*6*/
select sum(item.quantidade) as "Quantidade total" from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
where produto.valor > 10.00;

/*7*/
select cliente.nome, produto.descricao, item.quantidade, compra.codcompra from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on compra.cpf = cliente.cpf
where (produto.descricao = "Queijo" and item.quantidade > 5) or (produto.descricao = "Leite" and item.quantidade > 3);

/*8*/
select nome, cidade from cliente order by cidade asc;

/*9*/
select nome, profissao from cliente
where profissao = "Professor" or profissao = "Engenheiro" or profissao = "Gestor";

/*10*/
select cliente.nome, cliente.rua, produto.descricao, item.quantidade from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on compra.cpf = cliente.cpf
where produto.descricao = "Queijo" and item.quantidade between 6 and 24;


/*11*/
select cliente.nome, cliente.profissao, cliente.sexo, produto.descricao, item.quantidade, produto.valor from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on compra.cpf = cliente.cpf
where produto.descricao = "Leite" and item.quantidade > 10 and produto.valor between 1.00 and 4.75;

/*12*/
select cliente.nome, cliente.profissao, cliente.sexo, produto.descricao, item.quantidade, produto.valor from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on compra.cpf = cliente.cpf
where produto.descricao = "Leite" and item.quantidade > 10 and produto.valor between 1.00 and 4.75 order by cliente.nome desc;

/*13*/
select cliente.nome, cliente.profissao, produto.descricao from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on compra.cpf = cliente.cpf
where produto.descricao = "Leite" or produto.descricao = "Queijo" order by cliente.nome desc;

/*14*/
select cliente.nome, cliente.cidade, produto.descricao, item.quantidade from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on compra.cpf = cliente.cpf
where cliente.cidade = "Curitiba" and item.quantidade > 5;	

/*15*/


/*16*/
select cliente.nome, cliente.profissao, produto.descricao, produto.lote from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on compra.cpf = cliente.cpf
where cliente.profissao = "Professor";

/*17*/
select cliente.nome, cliente.cidade, produto.descricao, produto.lote from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on compra.cpf = cliente.cpf
where cliente.cidade = "Guarapuava";

/*18*/
select distinct descricao, lote from produto;

/*19*/
select sum(item.quantidade) as "Quantidade total de queijo comprada" from produto
inner join item
on produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on compra.cpf = cliente.cpf
where cliente.cidade = "Guarapuava" and produto.descricao = "Queijo";
