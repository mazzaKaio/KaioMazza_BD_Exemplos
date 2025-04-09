create table branca(
	peca varchar(10),
    qtde int,
    material varchar(15)
);

create table preta(
	peca varchar(10),
    qtde int,
    material varchar(15)
);

insert into branca(peca, qtde, material) values
	("Rei", "502", "Carvalho"),
    ("Rainha", "398", "Carvalho"),
    ("Torre", "1020", "Carvalho"),
    ("Bispo", "985", "Carvalho"),
    ("Cavaleiro", "950", "Carvalho"),
    ("Peão", "431", "Carvalho");
    
    insert into preta(peca, qtde, material) values
	("Rei", "502", "Ébano"),
    ("Rainha", "397", "Ébano"),
    ("Torre", "1020", "Ébano"),
    ("Bispo", "985", "Ébano"),
    ("Cavaleiro", "950", "Ébano"),
    ("Peão", "453", "Ébano");
    
select * from branca join preta using (peca, qtde);

select b.peca, b.qtde, b.material, p.material from branca as b inner join preta as p on b.qtde = p.qtde;
