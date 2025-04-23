drop database kaiomazza_sp;

create database kaiomazza_sp;

use kaiomazza_sp;

create table tbl_correntista(
	correntista_id int auto_increment primary key,
    correntista_nome varchar(60) not null,
    correntista_cpf varchar(20) not null
);

call mySp_correntistaInsert("Wagner Bianchi","023.456.789-10");
call mySp_correntistaInsert("Caio Aires","111.456.289-33");
call mySp_correntistaInsert("Kaio Yanes Chavez","774.654.859-22");
call mySp_correntistaInsert("Vinicius Passos","787.436.256-74");
call mySp_correntistaInsert("Rafael Mais Mais","999.999.999-99");
call mySp_correntistaUpdate("1", "Wagner MySQL Bianchi", "123.123.111-11");
call mySp_correntistaDelete(4);