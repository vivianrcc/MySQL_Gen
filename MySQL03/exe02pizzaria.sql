CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

CREATE TABLE tb_ingredientes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE tb_pizza_ingredientes (
    pizza_id BIGINT,
    ingrediente_id BIGINT,
    PRIMARY KEY (pizza_id, ingrediente_id),
    FOREIGN KEY (pizza_id) REFERENCES tb_pizzas(id),
    FOREIGN KEY (ingrediente_id) REFERENCES tb_ingredientes(id)
);

INSERT INTO tb_categorias (tipo, categoria)
VALUES  ("salvegan", "palmito"),
        ("salvegan", "calabresavegana"),
        ("salvegetarian", "berenjelaemussarela"),
        ("vegdoce", "chocolateamargo"),
        ("vegdoce", "morangoechocolate");

INSERT INTO tb_pizzas (nome, valor, categoria_id)
VALUES  ("palmito", 40.00, 1),
        ("calabresavegana", 50.00, 2),
        ("berenjelaemussarela", 60.00, 3),
        ("chocolateamargo", 70.00, 4),
        ("morangoechocolate", 80.00, 5);

INSERT INTO tb_ingredientes (nome)
VALUES  ("palmito"),
        ("calabresavegana"),
        ("tomate"),
        ("mussarela"),
        ("manjericão"),
        ("morango"),
        ("oregano"),
        ("milho"),
        ("azeitona"),
        ("chocolateamargo"),
        ("berenjela"),
        ("massa"),
        ("m&m"),
        ("queijovegan");

INSERT INTO tb_pizza_ingredientes (pizza_id, ingrediente_id)
VALUES  (1, 1), (1, 2), (1, 3), (1, 4),
        (2, 4), (2, 3), (2, 5),
        (3, 6), (3, 4), (3, 7), (3, 2), (3, 8), (3, 9),
        (4, 10), (4, 11), (4, 12),
        (5, 13), (5, 14), (5, 12);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT p.nome, p.valor, GROUP_CONCAT(i.nome SEPARATOR ', ') AS ingredientes, c.tipo, c.categoria 
FROM tb_pizzas p
JOIN tb_categorias c ON p.categoria_id = c.id
JOIN tb_pizza_ingredientes pi ON p.id = pi.pizza_id
JOIN tb_ingredientes i ON pi.ingrediente_id = i.id
GROUP BY p.id, p.nome, p.valor, c.tipo, c.categoria;

SELECT p.nome, p.valor, GROUP_CONCAT(i.nome SEPARATOR ', ') AS ingredientes, c.tipo, c.categoria 
FROM tb_pizzas p
JOIN tb_categorias c ON p.categoria_id = c.id
JOIN tb_pizza_ingredientes pi ON p.id = pi.pizza_id
JOIN tb_ingredientes i ON pi.ingrediente_id = i.id
WHERE c.tipo = "vegdoce"
GROUP BY p.id, p.nome, p.valor, c.tipo, c.categoria;