/*
1 - Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste
 e-commerce. 
2 - Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com 
o serviço deste e-commerce.
3 - Insira nesta tabela no mínimo 8 dados (registros).
4 - Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
5 - Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
6 - Ao término atualize um registro desta tabela através de uma query de atualização.
7 - Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

create database db_produtos;

use db_produtos;

create table tb_intens(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
quantidade int,
categoria varchar(255),
cor varchar(255),
primary key (id)
);

insert into tb_intens(nome, marca, quantidade, categoria, cor)
values("RS6", "Audi", 2, "wagon", "nardo grey");

insert into tb_intens(nome, marca, quantidade, categoria, cor)
values("Astra", "GM", 1, "hatch", "vinho");

insert into tb_intens(nome, marca, quantidade, categoria, cor)
values("300c", "chrysler", 1, "sedan", "preto");

insert into tb_intens(nome, marca, quantidade, categoria, cor)
values("911 turboS", "porsche", 1, "Coupé", "cinza");

insert into tb_intens(nome, marca, quantidade, categoria, cor)
values("T4", "troller", 1, "jipe", "preto");

insert into tb_intens(nome, marca, quantidade, categoria, cor)
values("Opala SS", "GM", 1, "Coupé", "Vermelho");

insert into tb_intens(nome, marca, quantidade, categoria, cor)
values("Maverick", "Ford", 1, "Coupé", "Azul");

insert into tb_intens(nome, marca, quantidade, categoria, cor)
values("Diavel", "Ducati", 1, "naked", "black and steel");

alter table tb_intens add preco decimal (9, 2);

update tb_intens set preco = 100.00 where id = 1;
update tb_intens set preco = 200.00 where id = 2;
update tb_intens set preco = 300.00 where id = 3;
update tb_intens set preco = 400.00 where id = 4;
update tb_intens set preco = 500.00 where id = 5;
update tb_intens set preco = 600.00 where id = 6;
update tb_intens set preco = 700.00 where id = 7;
update tb_intens set preco = 800.00 where id = 8;


select * from tb_intens where preco >= 500; 
select * from tb_intens where preco < 500; 

delete from tb_intens where id = 3












