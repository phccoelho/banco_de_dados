CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT PRIMARY KEY,
tipo varchar(255),
tamanho int
);

INSERT INTO tb_categorias (tipo, tamanho) VALUES ('brotinho', 20);
INSERT INTO tb_categorias (tipo, tamanho) VALUES ('pequena', 30);
INSERT INTO tb_categorias (tipo, tamanho) VALUES ('média', 35);
INSERT INTO tb_categorias (tipo, tamanho) VALUES ('grande', 40);
INSERT INTO tb_categorias (tipo, tamanho) VALUES ('família', 50);

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT PRIMARY KEY,
nome varchar(255),
preco decimal(6,2),
descricao varchar(255),
disponivel BOOLEAN,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id, disponivel)
VALUES ('Calabresa', 'Molho de tomate, calabresa fatiada, cebola e orégano', 45.90, 3, TRUE);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id, disponivel)
VALUES ('Margherita', 'Molho de tomate, mussarela, tomate e manjericão', 42.50, 2, TRUE);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id, disponivel)
VALUES ('Quatro Queijos', 'Mussarela, provolone, gorgonzola e parmesão', 48.00, 4, TRUE);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id, disponivel)
VALUES ('Frango com Catupiry', 'Frango desfiado, catupiry, milho e orégano', 49.90, 4, TRUE);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id, disponivel)
VALUES ('Portuguesa', 'Presunto, ovos, cebola, pimentão e azeitonas', 47.00, 5, TRUE);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id, disponivel)
VALUES ('Chocolate', 'Chocolate ao leite com granulado', 39.90, 1, TRUE);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id, disponivel)
VALUES ('Vegetariana', 'Legumes grelhados, tomate seco e rúcula', 46.00, 3, FALSE);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id, disponivel)
VALUES ('Pepperoni', 'Molho de tomate, mussarela e pepperoni', 44.00, 3, TRUE);


SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas WHERE UPPER(nome) LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.tipo, tb_categorias.tamanho
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.*, tb_categorias.tipo, tb_categorias.tamanho
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = 'média';