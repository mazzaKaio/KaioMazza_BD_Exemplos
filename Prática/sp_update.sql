delimiter //
create procedure mySp_correntistaUpdate(
	v_id int,
    v_nome varchar(60),
    v_cpf varchar(20))
begin
if ((v_id > 0) and (v_id != '') and (v_nome != '') and (v_cpf != '')) then
update tbl_correntista set correntista_nome = v_nome, correntista_cpf = v_cpf where correntista_id = v_id;
else
select "O novo NOME e CPF devem ser fornecidos para atualizar!" as Msg;
end if;
end;
//