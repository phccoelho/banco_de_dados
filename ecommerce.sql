CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT PRIMARY KEY,
nome varchar(255) NOT NULL,
categoria varchar(100) NOT NULL,
preco decimal(10, 2) NOT NULL,
estoque INT NOT NULL,
descricao varchar(255)
);

INSERT INTO tb_produtos (nome, categoria, preco, estoque, descricao)
VALUES 
('Camiseta Polo Masculina', 'Roupas', 89.90, 50, 'Camiseta de algodão, cor azul, tamanhos P ao GG'),
('Smartphone iPhone 12', 'Eletrônicos', 2599.99, 20, 'Tela 6.1", 128GB, câmera dupla de 12MP'),
('Fone de Ouvido Bluetooth', 'Acessórios', 199.90, 100, 'Bateria de 12h, compatível com Android e iOS'),
('Notebook ProBook 15', 'Informática', 3599.00, 10, 'Intel i5, 8GB RAM, 256GB SSD, Windows 11'),
('Tênis Esportivo', 'Calçados', 279.99, 35, 'Leve, respirável, ideal para corridas e academia');

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET preco = 3000
WHERE id = 2;

