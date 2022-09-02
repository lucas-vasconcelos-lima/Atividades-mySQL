/*

Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter
 o seguinte nome db_farmacia_bem_estar. O sistema trabalhará com as informações dos produtos
 comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias,
 que deverão estar relacionadas
 
 
1 - Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária,
 relevantes para classificar os produtos.
2 - Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos
 produtos da farmácia.
3 - Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
4 - Insira 5 registros na tabela tb_categorias.
5 - Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a
 relação com a tabela tb_categorias.
6 - Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
7 - Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
8 - Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C
 no atributo nome.
9 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com
 os dados da tabela tb_categorias.
10 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com
 os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica
 (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
11 - Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL)
 e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
 
*/

create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
medicamento varchar(255) not null, 
primary key (id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,  
descricao varchar(255) not null, 
adm varchar(255) not null, 
tipo varchar(255) not null, 
preco decimal(7, 2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_categorias(medicamento)
values ("ANALGÉSICOS");
insert into tb_categorias(medicamento)
values ("ANTIALÉRGICO");
insert into tb_categorias(medicamento)
values ("ANTI-INFLAMATÓRIOS");
insert into tb_categorias(medicamento)
values ("ANTIVIRAIS");

select * from tb_categorias;

insert into tb_produtos(nome, descricao, adm, tipo, preco, categoria_id)
values ("Dipirona", "A Dipirona Sódica é um analgésico e antitérmico utilizado em enfermidades
 que tenham dor e febre como sintomas", "Injetável, oral ou comprimido", "Genérico", 10.00, 1);
insert into tb_produtos(nome, descricao, adm, tipo, preco, categoria_id)
values ("Paracetamol", "O paracetamol é um analgésico e antipirético, que é muito indicado para 
baixar a febre ou aliviar dores leves a moderadas, especialmente em situações de gripe ou resfriado.",
 "Oral ou comprimido", "Similar", 20.00, 1);
insert into tb_produtos(nome, descricao, adm, tipo, preco, categoria_id)
values ("Loratadina", "Loratadina é um fármaco utilizado para o tratamento de alergias.",
 "Oral ou comprimido", "Marca", 30.00, 2);
insert into tb_produtos(nome, descricao, adm, tipo, preco, categoria_id)
values ("Ibuprofeno", "Trata-se de um princípio ativo que age contra inflamações não tão intensas,
 sendo comumente indicado contra febre e dores diversas.", "Comprimido", "Generico", 100.00, 3);
insert into tb_produtos(nome, descricao, adm, tipo, preco, categoria_id)
values ("Aciclovir", "O aciclovir serve para tratar infecções causadas pelo vírus da herpes,
 tanto a genital como a oral.", "Comprimido", "Generico", 40.00, 4);
insert into tb_produtos(nome, descricao, adm, tipo, preco, categoria_id)
values ("Oseltamivir", "É um fármaco classificado como antiviral inibidor
 de neuraminidase e é utilizado no tratamento e prevenção da influenza (gripe) A ou B.", 
 "Comprimido", "Marca", 70.00, 4);
 
 select * from tb_produtos where preco > 50.00;
 select * from tb_produtos where preco between 5.00 and 60.00;
 select * from tb_produtos where nome like "%c%";
 
 select nome, descricao, tipo, tb_categorias.medicamento
 from tb_produtos inner join tb_categorias
 on tb_categorias.id = tb_produtos.categoria_id;
 
 select nome, descricao, tipo, tb_categorias.medicamento
 from tb_produtos inner join tb_categorias
 on tb_categorias.id = tb_produtos.categoria_id
 where categoria_id = 1; 
 
 




