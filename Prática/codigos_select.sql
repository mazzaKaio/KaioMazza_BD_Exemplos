select * from colaborador_noite order by primeiro_nome;

select * from colaborador_noite order by nr_depto, primeiro_nome;

select primeiro_nome, ultimo_nome, nr_depto from colaborador_noite order by primeiro_nome;

select distinct nr_depto from colaborador_noite order by nr_depto;

select primeiro_nome, ultimo_nome, salario, (salario/12) from colaborador_noite order by primeiro_nome;

select * from colaborador_noite where nr_depto = 120;

select primeiro_nome, ultimo_nome, salario from colaborador_noite where salario between 80000.00 and 90000.00 order by salario;

select ultimo_nome, primeiro_nome, local_trabalho from colaborador_noite where local_trabalho = "Inglaterra" or local_trabalho = "Canada";

select ultimo_nome, primeiro_nome, local_trabalho from colaborador_noite where local_trabalho in ("Canada", "Inglaterra");

select primeiro_nome, salario, data_admissao from colaborador_noite where data_admissao between "1991/01/01" and "1991/12/31" order by data_admissao; 

select salario from colaborador_noite where nr_depto = 120;

select sum(salario) as "Total salario" from colaborador_noite where nr_depto = 120;