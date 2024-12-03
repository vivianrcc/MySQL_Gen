CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    origem VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (descricao, tipo, origem)
VALUES  ("tinta", "material", "nacional"),
        ("cimento", "material", "nacional"),
        ("tijolo", "material", "nacional"),
        ("telha", "material", "nacional"),
        ("areia", "material", "nacional");

INSERT INTO tb_produtos (nome, valor, validade, categoria_id)
VALUES  ("tinta látex", 100.00, "2024-12-31", 1),
        ("cimento branco", 150.00, "2024-12-31", 2),
        ("argamassa", 70.00, "2024-12-31", 3),
        ("telha cerâmica", 80.00, "2024-12-31", 4),
        ("verniz", 50.00, "2024-12-31", 5),
        ("primer", 120.00, "2024-12-31", 1),
        ("cimento estrutural", 100.00, "2024-12-31", 2),
        ("bloco de concreto", 90.00, "2024-12-31", 3);


SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT p.nome, p.valor, p.validade, c.descricao, c.tipo, c.origem FROM tb_produtos p
JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, p.valor, p.validade, c.descricao, c.tipo, c.origem FROM tb_produtos p
JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.descricao = "areia";