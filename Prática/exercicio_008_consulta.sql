use kaiomazzasql;

select produto.descricao, produto.codprod, item.quantidade, item.coditem from produto
inner join
item on item.codprod = produto.codprod where item.quantidade > 12;

select cliente.nome, cliente.cpf, produto.descricao, produto.codprod, item.quantidade, item.coditem from produto
inner join item
on produto.codprod = 100 and produto.codprod = item.codprod
inner join compra
on item.codcompra = compra.codcompra
inner join cliente
on cliente.cpf = compra.cpf
where item.quantidade > 23;