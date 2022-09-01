create database db_escola;

USE db_escola;

create table tb_classe(
ra bigint auto_increment,
nome varchar(255) not null,
periodo varchar(255) not null,
nota decimal(4, 2),
idade int,
primary key(ra));

insert into tb_classe(nome, periodo, nota, idade)
values ("Renata", "noite", 4.5, 26);

insert into tb_classe(nome, periodo, nota, idade)
values ("Nilson", "noite", 8.5, 19);

insert into tb_classe(nome, periodo, nota, idade)
values ("Roberto", "noite", 7.0, 25);

insert into tb_classe(nome, periodo, nota, idade)
values ("Nathielly", "tarde", 10.0, 26);

insert into tb(nome, periodo, nota, idade)
values ("Cleber", "tarde", 4.0, 17);

insert into tb_classe(nome, periodo, nota, idade)
values ("Francisco", "tarde", 3.0, 23);

insert into tb_classe(nome, periodo, nota, idade)
values ("Reinaldo", "manhã", 9.5, 28);

insert into tb_classe(nome, periodo, nota, idade)
values ("Moises", "manhã", 7.5, 30);

insert into tb_classe(nome, periodo, nota, idade)
values ("Ronaldo", "noite", 5.0, 17);

select * from tb_classe;

select * from tb_classe where nota > 7.0;

select * from tb_classe where nota < 7.0;

update tb_classe set periodo = "manhã" where ra = 1;
