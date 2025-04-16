-- 1) LISTAR TODOS OS PRODUTOS COM A RESPECTIVCA
-- DESCRIÇÕES, UNIDADES E VALORES UNITARIOS

select DescProduto, UnidProduto, ValorUnitario from produto;

-- 2) LISTAR DA TABELA CLIENTE, O CNPJ, NOME E ENDERECO

select CNPJ, NomeCliente, Endereco from cliente;

-- 3) LISTAR TUDO DA TABELA vendedor

select * from vendedor;

-- 4) APRESENTE A SAIDA DE UMA CONSULTA NA TABELA VENDEDOR
-- USANDO cabeçalho

select CodVendedor as MATRICULA, NomeVendedor as NOME, SalarioFixo as RENDIMENTO, FaixaComissao as COMISSAO from vendedor;

-- 5) TRAGA O NOME DO VENDEDOR E O SALARIO FIXO MULTIPLICADO POR 2

select NomeVendedor as NOME, (SalarioFixo * 2) as SALARIO from vendedor;

-- 6) LISTAR O NUMERO DO PEDIDO, O CODIGO DO PRODUTO E A QUANTIDADE DOS ITENS DOS PEDIDOS
-- NA QUAL A QUANTIDADE É IGUAL A 35 DA TABELA item_pedido

select Num_Pedido, Cod_Produto, QtdeProduto from item_pedido where QtdeProduto = 35;

-- 7) LISTE OS NOMES E A CIDADE DOS CLIENTES QUE MORAM EM NITEROI

select NomeCliente, Cidade from cliente where Cidade = "Niteroi";

-- 8) LISTAR OS PRODUTOS QUE TENHAM UNIDADE IGUAL A "m"
-- E VALOR IGUAL A 1.05 DE PRODUTO

select DescProduto, UnidProduto, ValorUnitario from produto where UnidProduto = "m" and ValorUnitario = 1.05;

-- 9) LISTE OS CLIENTES E SEUS RESPECTIVOS ENDEREÇOS QUE MORAM 
-- EM SÃO PAULO OU ESTEJAM NA FAIXA DE CEP ENTRE 30077000 E 30079000

select NomeCliente, Endereco, Cidade, CEP from cliente where Cidade = "São Paulo" or CEP between 30077000 and 30079000;

-- 10) MOSTRAR TODOS OS PEDIDOS QUE NAO TENHAM PRAZO DE ENTREGA IGUAL A 15 DIAS

select NumPedido, PrazoEntrega from pedido where PrazoEntrega != 15;

-- 11) LISTAR O CODIGO E A DESCRICAO DOS PRODUTOS QUE TENHAM VALOR UNITARIO
-- NA FAIXA DE 0.32 ATÉ 2.00 

select CodProduto, DescProduto, ValorUnitario from produto where ValorUnitario between 0.32 and 2.00;

-- 12) LISTAR TODOS OS PRODUTOS QUE TENHAM O SEU NOME COMEÇADO POR "Q"

select CodProduto, DescProduto as "Nome Produto" from produto where DescProduto like ("Q%");

-- 13) LISTAR TODOS OS VENDEDORES QUE NÃO COMEÇAM POR "JO"

select CodVendedor, NomeVendedor from vendedor where NomeVendedor not like ("Jo%");

-- 14) LISTAR OS VENDEDORES EM ORDEM ALFABETICA E QUE SÃO 
-- DA FAIXA DE COMISSAO "A" E "B"

select * from vendedor where FaixaComissao = "A" or FaixaComissao = "B" order by NomeVendedor;

-- 15) MOSTRAR OS CLIENTES QUE NAO TENHAM INSCRICAO ESTADUAL

select CodCliente, NomeCliente, InscEstadual from cliente where InscEstadual is null;

-- 16) MOSTRAR EM ORDEM ALFABETICA A LISTA DE VENDEDORES E SEUS RESPECTIVOS SALARIOS FIXOS

select CodVendedor, NomeVendedor, SalarioFixo from vendedor order by NomeVendedor;