/*
1 - Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações
dos colaboradores desta empresa. 
2 - Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar
com o serviço deste RH.
3 - Insira nesta tabela no mínimo 5 dados (registros).
4 - Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
5 - Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
6 - Ao término atualize um registro desta tabela através de uma query de atualização.
7 - Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

*/

create database db_recursos_humanos;

use db_recursos_humanos;

create table tb_colaboradores(
nome varchar(255) not null,
-- alterar numero
cpf varchar(255) not null,
endereco varchar(255) not null,
salario decimal(5, 2),
cargo varchar(255) not null,
primary key (cpf)
);

insert into tb_colaboradores(nome, cpf, endereco, salario, cargo)
values ("Lucas", "123.456.789-12", "Rua: Flor", 350.00, "desenvolvedor JR");

alter table tb_colaboradores modify salario decimal(7, 2);

update tb_colaboradores set salario = 3500.00 where cpf = "123.456.789-12";

insert into tb_colaboradores(nome, cpf, endereco, salario, cargo)
values ("Jemeremias", "123.456.789-13", "Rua: Flor", 1500.00, "auxiliar");

insert into tb_colaboradores(nome, cpf, endereco, salario, cargo)
values ("Maria", "123.456.789-14", "Rua: Ameixa", 6000.00, "desenvolvedora pleno");

insert into tb_colaboradores(nome, cpf, endereco, salario, cargo)
values ("Pedro", "123.456.789-15", "Rua: Amora", 1800.00, "Ofice boy");

insert into tb_colaboradores(nome, cpf, endereco, salario, cargo)
values ("Roger", "123.456.789-16", "Rua: Gaivota", 11000.00, "desenvolvedora Sênior");

select * from tb_colaboradores where salario >= 2000;
select * from tb_colaboradores where salario <= 2000;

update tb_colaboradores set endereco = "Rua: flor de inverno" where cpf = "123.456.789-12";






