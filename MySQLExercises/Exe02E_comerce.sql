CREATE DATABASE e_commerceSnout;

USE e_commerceSnout;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(100),
    valor DECIMAL(10,2),
    categoria VARCHAR(100),
    data_cadastro DATE
);

INSERT INTO produtos (nome, descricao, valor, categoria, data_cadastro) VALUES
('PijamaPet', 'Microfibra', 30.00, 'Vestuário', '2024-05-17'),
('CamisetaPet', 'Microfibra', 30.00, 'Vestuário', '2024-05-17'),
('RegataPet', 'Ultrasoft', 30.00, 'Vestuário', '2024-05-17'),
('Caminha', 'Estofado', 100.00, 'Estofado', '2023-09-01'),
('CobertorPet', 'Cobertoresmicrofibra', 70.00, 'Cobertores', '2024-08-01'),
('BolsadeTransporte', 'Bolsas com ziper', 300.00, 'Acessórios', '2024-01-01'),
('CasteloArranhador', 'Arranhadores', 600.00, 'Acessorios', '2024-05-17'),
('Bandana', 'Tricoline', 30.00, 'Acessórios', '2021-08-10'),
('TagIdentificacao', 'Rastreadores', 100.00, 'Eletrônicos', '2023-01-08');



SELECT * FROM produtos WHERE valor > 500;

SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos SET valor = 700.00 WHERE id = 7;

SELECT * FROM produtos;