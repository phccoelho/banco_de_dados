CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id bigint AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255) NOT NULL,
    nota decimal(10,2) NOT NULL,
    serie varchar(50) NOT NULL,
    status_matricula varchar(255) NOT NULL
);

INSERT INTO tb_estudantes (nome, nota, serie, status_matricula)
VALUES
('Fernanda Oliveira', 4.80, '6º Ano', 'Ativo'),
('Gabriel Sousa', 9.50, '2º Ano EM', 'Ativo'),
('Helena Martins', 7.20, '9º Ano', 'Trancado'),
('Igor Santos', 6.40, '1º Ano EM', 'Ativo'),
('Juliana Costa', 8.75, '8º Ano', 'Concluído'),
('Kauan Ribeiro', 5.60, '7º Ano', 'Ativo'),
('Larissa Fernandes', 9.00, '3º Ano EM', 'Ativo'),
('Matheus Rocha', 3.90, '6º Ano', 'Cancelado'),
('Natália Souza', 7.85, '2º Ano EM', 'Ativo'),
('Otávio Lima', 6.95, '9º Ano', 'Ativo');

SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes
SET nota = 7.2
WHERE id = 1;
