CREATE DATABASE rh_da_empresa;

USE rh_da_empresa;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    setor VARCHAR(100),
    data_admissao DATE,
    data_demissao DATE
);

INSERT INTO funcionarios (nome, cargo, salario, setor, data_admissao, data_demissao) VALUES
('Alice', 'Vendedor(A)', 1000.00, 'TI', '2021-01-01', '2024-03-10'),
('Vivian', 'Gerente de RH', 5500.00, 'RH', '2021-01-01', '2023-12-31'),
('Pedro', 'Especialista de vendas', 2000.00, 'Marketing', '2021-01-01', '2023-11-30'),
('Henrique', 'Coordenador', 3500.00, 'Qualidade', '2021-01-01', '2023-10-15'),
('Carla', 'promotor', 1000.00, 'Suporte', '2021-01-01', '2023-09-30');

SELECT * FROM funcionarios WHERE salario > 2000.00;

SELECT * FROM funcionarios WHERE salario < 2000.00;

UPDATE funcionarios SET salario = 4500.00 WHERE id = 1;

SELECT * FROM funcionarios;