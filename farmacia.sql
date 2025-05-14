CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100) NOT NULL,
setor VARCHAR(100) NOT NULL
);

INSERT INTO tb_categorias (nome_categoria, setor) VALUES ('Medicamentos', 'Saúde');
INSERT INTO tb_categorias (nome_categoria, setor) VALUES ('Dermocosméticos', 'Beleza');
INSERT INTO tb_categorias (nome_categoria, setor) VALUES ('Higiene Pessoal', 'Cuidados Diários');
INSERT INTO tb_categorias (nome_categoria, setor) VALUES ('Suplementos', 'Nutrição');
INSERT INTO tb_categorias (nome_categoria, setor) VALUES ('Infantil', 'Cuidados com Bebê');

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(100) NOT NULL,
descricao TEXT,
preco DECIMAL(8,2) NOT NULL,
estoque INT NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, categoria_id)
VALUES ('Dipirona', 'Analgésico e antitérmico', 12.50, 100, 1);

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, categoria_id)
VALUES ('Protetor Solar FPS 50', 'Protetor solar facial e corporal', 59.90, 50, 2);

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, categoria_id)
VALUES ('Sabonete Líquido', 'Sabonete com pH neutro', 18.00, 75, 3);

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, categoria_id)
VALUES ('Ômega 3', 'Suplemento alimentar', 64.90, 40, 4);

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, categoria_id)
VALUES ('Pomada para Assaduras', 'Para prevenção de assaduras em bebês', 25.00, 60, 5);

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, categoria_id)
VALUES ('Vitamina C', 'Reforço do sistema imunológico', 35.00, 80, 4);

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, categoria_id)
VALUES ('Creme Hidratante', 'Hidratação para pele seca', 48.50, 30, 2);

INSERT INTO tb_produtos (nome_produto, descricao, preco, estoque, categoria_id)
VALUES ('Cloridrato de Losartana', 'Antihipertensivo', 65.00, 45, 1);


SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome_categoria, tb_categorias.setor
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;