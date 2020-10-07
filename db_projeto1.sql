 -- criando Banco de Dados
 create database db_projeto1;
use db_projeto1;
-- criando tabela 
create table tb_usuario(
	id INT NOT NULL AUTO_INCREMENT,
	nomecompleto varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	senha varchar(255) NOT NULL,
	PRIMARY KEY (id)
);
-- criando tabela 
create table  tb_produto(
	id INT NOT NULL AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	preco DECIMAL(10,2) NOT NULL,
	endereco varchar(255) NOT NULL,
	descricao varchar(255) NOT NULL,
	categoria_id int  NOT NULL,
	PRIMARY KEY (id),
    foreign key  (categoria_id) references tb_categoria (id)
);
-- criando tabela 
CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT,
	nomecateg varchar(255) NOT NULL,
	setor varchar(255) NOT NULL,
	situacao BOOLEAN  NOT NULL,
	PRIMARY KEY (id)
);


