CREATE DATABASE EscolaPrimaria;

USE EscolaPrimaria;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    serie VARCHAR(100),
    nota DECIMAL(10,2),
    data_matricula DATE);

INSERT INTO estudantes (nome, idade, serie, nota, data_matricula) VALUES
('Aline', 12, '9º ano', 9.0, '2024-05-17'),
('Gabriela', 14, '8º ano', 6.5, '2024-02-19'),
('Akina', 11, '7º ano', 8.0, '2024-02-06'),
('Lorena', 9, '6º ano', 8.5, '2024-03-01'),
('Henrique', 8, '5º ano', 2.0, '2024-01-01'),
('Olivia', 10, '4º ano', 3.5, '2024-01-01'),
('AItana', 9, '3º ano', 5.0, '2024-04-12'),
('Julia', 8, '2º ano', 3.5, '2024-03-01');

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 9.0 WHERE id = 1;

SELECT * FROM estudantes;