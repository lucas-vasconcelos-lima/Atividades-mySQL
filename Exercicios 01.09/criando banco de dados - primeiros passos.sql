-- Criar banco de dados
CREATE DATABASE db_quitanda;

-- selecionar o db_quitanda
USE db_quitanda;

-- criar tabela de tb_produto
CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
data_validade date,
preco decimal,
primary key (id) 
);

/*
 inserindo dados na tabela
*/

INSERT INTO tb_produto(nome, quantidade, data_validade, preco)
VALUES ("tomate", 100, "2022-09-06", 10.0);

INSERT INTO tb_produto(nome, quantidade, data_validade, preco)
VALUES ("laranja", 50, "2022-09-06", 5.0);

INSERT INTO tb_produto(nome, quantidade, data_validade, preco)
VALUES ("manga", 150, "2022-09-16", 5.9);

-- consultar dados 
-- SELECT coluna FROM tabela WHERE condicoes

-- Visualizar todos os dados das tabelas
SELECT * FROM tb_produtos;

-- visualizar dados selecionando colunas especificas
SELECT nome, preco FROM tb_produto;

-- visualizar o produto cuja id igual 1
SELECT * FROM tb_produto WHERE id = 1;


-- visualizar todo produtos com preço maior que 5 and ou && menor que 9

SELECT * FROM tb_produto WHERE preco > 5 AND preco < 9; 

-- visualizar todos os produtos que tenham preco maior ou igual a 10 ou nome igual a manga

select * from tb_produto where preco >= 10 OR nome = "manga"; 

-- alterar nome da tabela

ALTER TABLE tb_produto RENAME tb_produtos; 

-- deletar toda tabela
-- drop table tb_produtos; ******************** danger

-- alterar formatação do atributo da tabela
ALTER TABLE tb_produtos MODIFY preco decimal(5, 2);

-- adicionar coluna na tabela
ALTER TABLE tb_produtos add descricao varchar(255);

-- excluir atrubutos da tabela
ALTER TABLE tb_produtos drop descricao; 

-- alterar dados da tabela

UPDATE tb_produtos SET preco = 0.25, nome = "Uva" where id = 4; 

update tb_produtos set quantidade = 5 where id = 4;

-- deletar o item dentro da tabela

DELETE FROM tb_produtos where id = 4; 




