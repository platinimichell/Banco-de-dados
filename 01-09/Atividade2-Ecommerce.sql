create database db_loja;

USE db_loja;

create table tb_estoque(
cod_barras bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal(5, 2),
tipo varchar(255),
primary key(cod_barras));

insert into tb_estoque(nome, quantidade, preco, tipo)
values ("camiseta", 80, 89.90, "vestuário");

insert into tb_estoque(nome, quantidade, preco, tipo)
values ("calça jeans", 120, 129.90, "vestuário");

insert into tb_estoque(nome, quantidade, preco, tipo)
values ("meia", 50, 29.90, "vestuário");

insert into tb_estoque(nome, quantidade, preco, tipo)
values ("toalha de mesa", 100, 49.90, "cama, mesa e banho");

insert into tb_estoque(nome, quantidade, preco, tipo)
values ("abajour", 30, 79.90, "decoração");

insert into tb_estoque(nome, quantidade, preco, tipo)
values ("celular", 50, 999.90, "eletrônicos");

insert into tb_estoque(nome, quantidade, preco, tipo)
values ("monitor", 70, 789.00, "eletrônicos");

insert into tb_estoque(nome, quantidade, preco, tipo)
values ("camêra portátil", 20, 899.99, "eletrônicos");

select * from tb_estoque;

select * from tb_estoque where preco > 500;

select * from tb_estoque where preco < 500;

update tb_estoque set preco = 599.90 where cod_barras = 8;

