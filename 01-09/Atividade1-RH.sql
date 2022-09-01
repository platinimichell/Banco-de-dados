create database db_rh;

use db_rh;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar(255) not null,
cpf int(11) not null,
data_contratacao date,
salario decimal(6, 2),
primary key(id)
);

insert into tb_funcionarios(nome, cpf, data_contratacao, salario)
values ("José das Couves", 123, "2022-03-01", 1500.00);

insert into tb_funcionarios(nome, cpf, data_contratacao, salario)
values ("Joana Ana", 321, "2022-01-01", 2500.00);

insert into tb_funcionarios(nome, cpf, data_contratacao, salario)
values ("Matilde Novaes", 456, "2019-08-12", 3500.00);

insert into tb_funcionarios(nome, cpf, data_contratacao, salario)
values ("Sebastião Alfredo", 654, "2012-02-15", 2850.00);

insert into tb_funcionarios(nome, cpf, data_contratacao, salario)
values ("Elizeu Rafael", 789, "2021-07-07", 2850.00);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 1750.00 where id = 4;