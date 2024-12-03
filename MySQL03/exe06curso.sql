CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    horas INT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (descricao, tipo)
VALUES  ("desenvolvimento web", "tecnologia"),
        ("edição de vídeo", "tecnologia"),
        ("fotografia", "arte"),
        ("idiomas", "humanas"),
        ("cozinha", "humanas");

INSERT INTO tb_cursos (nome, valor, horas, categoria_id)
VALUES  ("HTML e CSS", 450.00, 35, 1),
        ("JavaScript", 550.00, 45, 1),
        ("Adobe Premiere", 650.00, 55, 2),
        ("Final Cut Pro", 750.00, 65, 2),
        ("Fotografia Digital", 850.00, 75, 3),
        ("Alemão", 950.00, 85, 4),
        ("Francês", 1050.00, 95, 4),
        ("Culinária Brasileira", 1150.00, 105, 5);

SELECT * FROM tb_cursos WHERE valor > 550.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 500.00 AND 1200.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%A%";

SELECT c.nome, c.valor, c.horas, t.descricao, t.tipo FROM tb_cursos c
JOIN tb_categorias t ON c.categoria_id = t.id;

SELECT c.nome, c.valor, c.horas, t.descricao, t.tipo FROM tb_cursos c
JOIN tb_categorias t ON c.categoria_id = t.id WHERE t.descricao = "desenvolvimento web";