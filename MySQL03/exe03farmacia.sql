CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, categoria)
VALUES  
        ("higiene", "sabonete"),
        ("higiene", "shampoo"),
        ("medicamento", "analgésico"),
        ("medicamento", "antibiótico"),
        ("higiene", "pastadedente");

INSERT INTO tb_produtos (nome, valor, validade, categoria_id)
VALUES  ("ShampooEudora", 10.00, "2024-12-31", 1),
        ("Shampooedudora", 29.90, "2024-12-31", 2),
        ("adivil", 5.00, "2024-12-31", 3),
        ("tylrnol", 35.00, "2024-12-31", 4),
        ("MacaraEudora", 75.00, "2024-12-31", 5),
        ("paracetamol", 50.00, "2024-12-31", 1),
        ("CondicionadorEudora", 80.00, "2024-12-31", 2),
        ("dipirona", 70.00, "2024-12-31", 3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT p.nome, p.valor, p.validade, c.tipo, c.categoria FROM tb_produtos p
JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, p.valor, p.validade, c.tipo, c.categoria FROM tb_produtos p
JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.tipo = "medicamento";