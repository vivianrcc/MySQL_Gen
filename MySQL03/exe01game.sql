CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    nivel INT,
    poderde_ataque INT,
    poderde_defesa INT,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_class(id)
);

CREATE TABLE tb_class (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    class VARCHAR(100) NOT NULL
);

INSERT INTO tb_personagens (nome, nivel, poderde_ataque, poderde_defesa, classe_id)
VALUES  ("GatinhoExplosivo", 10, 1000, 5000, 1),
        ("GatinhoPirata", 10, 100, 4500, 5),
        ("GatinhoEspião", 10, 100, 1000, 2),
        ("GatinhaPrincesa", 10, 100, 1500, 6),
        ("GatinhaAssasina", 10, 100, 4300, 3),
        ("GatinhoFilhote", 10, 100, 3000, 4),
        ("GatoVelho", 10, 100, 4000, 7);

INSERT INTO tb_class (tipo, class)
VALUES  ("Gato", "Explosivo"),
        ("Gato", "Pirata"),
        ("Gato", "Espiao"),
        ("Gato", "Princesa"),
        ("Gato", "Assasina"),
        ("Gato", "Filhote"),
        ("Gato", "Velho");

SELECT * FROM tb_personagens WHERE poderde_ataque > 2000;

SELECT * FROM tb_personagens WHERE poderde_defesa BETWEEN 2000 AND 3000;

SELECT nome FROM tb_personagens WHERE nome LIKE "%C%";

SELECT p.nome, p.nivel, c.tipo, c.class FROM tb_personagens p
JOIN tb_class c ON p.classe_id = c.id;

SELECT p.nome, p.nivel, c.tipo, c.class FROM tb_personagens p
JOIN tb_class c ON p.classe_id = c.id WHERE c.class = "arcoiris";