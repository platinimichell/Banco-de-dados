create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
primary key(id)
);

insert into tb_categorias(tipo)
values("vegan");

insert into tb_categorias(tipo)
values("normal");

insert into tb_categorias(tipo)
values("doce");

insert into tb_categorias(tipo)
values("meio a meio");

insert into tb_categorias(tipo)
values("especial");

select * from tb_categorias;

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal(8,2) not null,
tipo_id bigint,
tamanho varchar(255),
primary key(id),
foreign key(tipo_id) references tb_categorias(id));

insert into tb_pizzas(sabor, preco, tipo_id)
values("4 queijos", 59.99, 2);

insert into tb_pizzas(sabor, preco, tipo_id)
values("brigadeiro", 79.0, 3);

insert into tb_pizzas(sabor, preco, tipo_id)
values("espinafre", 47.50, 1);

insert into tb_pizzas(sabor, preco, tipo_id)
values("calbresa", 39.99, 2);

insert into tb_pizzas(sabor, preco, tipo_id)
values("doce de leite", 47.99, 3);

insert into tb_pizzas(sabor, preco, tipo_id)
values("tofu", 89.99, 1);

insert into tb_pizzas(sabor, preco, tipo_id)
values("frando c/ bacon", 49.99, 2);

insert into tb_pizzas(sabor, preco, tipo_id)
values("romeu e julieta", 60.0, 3);

select * from tb_pizzas;

select * from tb_pizzas where preco > 45.0;

select * from tb_pizzas where preco < 45.0;

select * from tb_pizzas where preco between 50.0 and 100.0 order by preco;

select * from tb_pizzas where sabor like "%m%";

select sabor, preco, tb_categorias.tipo from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.tipo_id;

select sabor, preco, tb_categorias.tipo from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.tipo_id where tipo_id = 3;
