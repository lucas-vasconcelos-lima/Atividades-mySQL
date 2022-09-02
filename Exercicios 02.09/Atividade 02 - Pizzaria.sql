/*
Atividade 2

Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter
o seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações dos produtos comercializados
pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.

Boas Práticas:

1 - Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes
para classificar as pizzas.
2 - Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes
 aos produtos da pizzaria.
3 - Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
4 - Insira 5 registros na tabela tb_categorias.
5 - Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com
 a tabela tb_categorias.
6 - Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
7 - Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
8 - Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
9 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados
 da tabela tb_categorias.
10 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados
 da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo:
 Todas as pizzas que são doce).
11 - Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL)
 e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

create database db_pizzzaria_legal;

use db_pizzzaria_legal;

create table tb_categorias (
id bigint auto_increment,
tipo varchar(255) not null, 
brinde varchar(255) not null,
primary key (id)
);

create table tb_pizzas (
id bigint auto_increment,
sabor varchar(255) not null,
borda varchar(255) not null,
formato varchar(255) not null,
preco decimal(5, 2),
mista boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_categorias(tipo, brinde)
values ("Salgada", "Acompanha refri");
insert into tb_categorias(tipo, brinde)
values ("Doce", "Acompanha agua");
insert into tb_categorias(tipo, brinde)
values ("Vegana", "Acompanha brinde ecologico (sementes diversas)");
insert into tb_categorias(tipo, brinde)
values ("Sem lactose", "Acompanha lacday");
insert into tb_categorias(tipo, brinde)
values ("Fit", "Acompanha Scoop de whey");

select * from tb_categorias;

insert into tb_pizzas(sabor, borda, formato, preco, mista, categoria_id)
values ("4 queijos com carne seca", "sem borda",  "Quadrada", 40.00, 1, 1); 
insert into tb_pizzas(sabor, borda, formato, preco, mista, categoria_id)
values ("Brigadeiro", "com borda", "Redonda", 45.00, 0, 2); 
insert into tb_pizzas(sabor, borda, formato, preco, mista, categoria_id)
values ("Calabresa com queijo", "sem borda", "Coração", 48.00, 1, 1); 
insert into tb_pizzas(sabor, borda, formato, preco, mista, categoria_id)
values ("Frango c/ brocolis", "com borda", "Quadrada", 50.00, 0, 5); 
insert into tb_pizzas(sabor, borda, formato, preco, mista, categoria_id)
values ("Rúcula c/ tomate seco", "sem borda", "Redonda", 55.00, 0, 3); 
insert into tb_pizzas(sabor, borda, formato, preco, mista, categoria_id)
values ("Marguerita", "com borda", "Coração", 60.00, 0, 4); 
insert into tb_pizzas(sabor, borda, formato, preco, mista, categoria_id)
values ("Romeu e julieta", "sem borda", "Quadrada", 65.00, 0, 2); 
insert into tb_pizzas(sabor, borda, formato, preco, mista, categoria_id)
values ("Doritos", "com borda", "Redonda", 70.00, 0, 1); 

select * from tb_pizzas;
select * from tb_pizzas where preco > "45.00"; 
select * from tb_pizzas where preco between 50.00 and 100.00;
select * from tb_pizzas where sabor like "%m%";

select sabor, preco, tb_categorias.tipo
from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.categoria_id;

select sabor, tb_categorias.id
from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.categoria_id
where categoria_id = 2;








