/*
1 - Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações
 dos estudantes deste registro dessa escola. 
2 - Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes
 dos estudantes para se trabalhar com o serviço dessa escola.
3 - Insira nesta tabela no mínimo 8 dados (registros).
4 - Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
5 - Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
6 - Ao término atualize um registro desta tabela através de uma query de atualização.
7 - Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL)
 e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

create database db_escola; 

use db_escola; 

create table tb_alunes(
nome varchar(255),
cpf varchar(14),
endereco varchar(255),
data_de_nascimento date,
turma varchar(255)
);

insert into tb_alunes(nome, cpf, endereco, data_de_nascimento, turma)
values ("Lucas", "123.456.789-12", "Rua: Flor", "1996-09-10", "Turma 1");

insert into tb_alunes(nome, cpf, endereco, data_de_nascimento, turma)
values ("Jemeremias", "123.456.789-13", "Rua: Flor", "1996-01-25", "Turma 1");

insert into tb_alunes(nome, cpf, endereco, data_de_nascimento, turma)
values ("Maria", "123.456.789-14", "Rua: Ameixa", "1998-03-17", "Turma 2");

insert into tb_alunes(nome, cpf, endereco, data_de_nascimento, turma)
values ("Pedro", "123.456.789-15", "Rua: Amora", "1998-06-19", "Turma 2");

insert into tb_alunes(nome, cpf, endereco, data_de_nascimento, turma)
values ("Roger", "123.456.789-16", "Rua: Gaivota", "1996-06-27", "Turma 1");

insert into tb_alunes(nome, cpf, endereco, data_de_nascimento, turma)
values ("Jessica", "123.456.789-17", "Rua: brilhantes", "1997-10-27", "Turma 2");

insert into tb_alunes(nome, cpf, endereco, data_de_nascimento, turma)
values ("Ana", "123.456.789-18", "Rua: pedrinhas", "1999-02-10", "Turma 3");

insert into tb_alunes(nome, cpf, endereco, data_de_nascimento, turma)
values ("Liz", "123.456.789-19", "Rua: floco", "1999-07-29", "Turma 3");

alter table tb_alunes add nota decimal(4, 2);

alter table tb_alunes add primary key (cpf);

update tb_alunes set nota = 1.0 where cpf = "123.456.789-12";
update tb_alunes set nota = 3.0 where cpf = "123.456.789-13";
update tb_alunes set nota = 6.0 where cpf = "123.456.789-14";
update tb_alunes set nota = 7.0 where cpf = "123.456.789-15";
update tb_alunes set nota = 7.0 where cpf = "123.456.789-16";
update tb_alunes set nota = 8.0 where cpf = "123.456.789-17";
update tb_alunes set nota = 9.0 where cpf = "123.456.789-18";
update tb_alunes set nota = 10.0 where cpf = "123.456.789-19";

select * from tb_alunes where nota >= 7.0;
select * from tb_alunes where nota < 7.0;

update tb_alunes set endereco = "Rua flor de inverno" where cpf = "123.456.789-12";




