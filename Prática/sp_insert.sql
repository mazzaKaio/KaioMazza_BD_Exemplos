delimiter //
create procedure mySp_correntistaInsert(
	v_nome varchar(60),
    v_cpf varchar(20))
begin
if ((v_nome != '') and (v_cpf != '')) then
insert into tbl_correntista (correntista_nome, correntista_cpf) values (v_nome, v_cpf);
else
select "NOME e CPF devem ser fornecidos para o cadastro!" as Msg;
end if;
end;
//