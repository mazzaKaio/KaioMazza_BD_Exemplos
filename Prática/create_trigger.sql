delimiter $
create trigger Tgr_ItensVenda_Insert after insert on itensvenda
for each row
begin
	update produtos set estoque = estoque - new.quantidade
	where referencia = new.produto;
end$

create trigger Tgr_ItensVenda_Delete after delete on itensvenda
for each row
begin
	update produtos set estoque = estoque + old.quantidade
	where referencia = old.produto;
end$
delimiter ;