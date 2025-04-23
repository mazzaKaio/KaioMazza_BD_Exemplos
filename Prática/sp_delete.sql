delimiter //
create procedure mySp_correntistaDelete(v_id int)
begin
if ((v_id > 0) and (v_id != '')) then
delete from tbl_correntista where correntista_id = v_id;
else
select "O identificador do registro não foi informado" as Msg;
end if;
end;
//