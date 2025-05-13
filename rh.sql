CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cargo varchar(255) NOT NULL,
formacao_academica varchar(255) NOT NULL,
salario decimal,
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, cargo, formacao_academica, salario)
VALUES("Pedro", "Analista de RH", "Ciência da Computação", 1500),
("Ana", "Desenvolvedor Backend", "Engenharia da Computação", 6000),
("Tiago", "Gerente de Projetos", "Administracão", 3500),
("Beatriz", "Estagiário de Marketing", "Publicidade", 1000),
("Julia", "Assistente Administrativo", "Administração", 2500);

;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 3500
Where id = 2;
