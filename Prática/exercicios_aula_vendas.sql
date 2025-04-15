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

-- 