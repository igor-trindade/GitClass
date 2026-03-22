/* Utilizar o banco de dados 'sprint1' */
USE sprint1;

/* Criar a tabela Restaurante */
CREATE TABLE Restaurante (
    idRest INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    CEP VARCHAR(9),
    tipo VARCHAR(30)
);

/* Inserir dados na tabela Restaurante */
INSERT INTO Restaurante (nome, CEP, tipo) VALUES
    ('Churrascaria Boi Na Brasa', '01515-001', 'churrascaria'),
    ('Sushi Iti', '01515-002', 'japonesa'),
    ('Pizza Delícia', '01515-003', 'italiana'),
    ('Hamburgueria Fast', '01515-004', 'fast-food'),
    ('Pastelaria do Mário', '01515-005', 'fast-food');

/* Alterar o campo tipo para aumentar para 50 caracteres */
ALTER TABLE Restaurante MODIFY COLUMN tipo VARCHAR(50);

/* 1) Exibir todos os dados da tabela */
SELECT * FROM Restaurante;

/* 2) Exibir apenas os nomes e os tipos dos restaurantes */
SELECT nome, tipo FROM Restaurante;

/* 3) Exibir apenas os dados dos restaurantes de um determinado tipo (exemplo: 'fast-food') */
SELECT * FROM Restaurante WHERE tipo = 'fast-food';

/* 4) Exibir apenas os dados dos restaurantes de um determinado CEP (exemplo: '01515-001') */
SELECT * FROM Restaurante WHERE CEP = '01515-001';

/* 5) Exibir os dados da tabela ordenados pelo nome do restaurante */
SELECT * FROM Restaurante ORDER BY nome ASC;

/* 6) Exibir os dados da tabela ordenados pelo tipo em ordem decrescente */
SELECT * FROM Restaurante ORDER BY tipo DESC;

/* 7) Exibir os dados da tabela, dos restaurantes cujo nome comece com uma determinada letra (exemplo: 'P') */
SELECT * FROM Restaurante WHERE nome LIKE 'P%';

/* 8) Exibir os dados da tabela, dos restaurantes cujo CEP termine com um determinado número (exemplo: '5') */
SELECT * FROM Restaurante WHERE CEP LIKE '%5';

/* 9) Exibir os dados da tabela, dos restaurantes cujo tipo tenha como segunda letra uma determinada letra (exemplo: 'a') */
SELECT * FROM Restaurante WHERE tipo LIKE '_a%';

/* 10) Exibir os dados da tabela, dos restaurantes cujo nome tenha como penúltima letra uma determinada letra (exemplo: 'o') */
SELECT * FROM Restaurante WHERE nome LIKE '%o_';

/* 11) Atualize o CEP de algum restaurante. Exiba novamente os dados da tabela após a atualização */
UPDATE Restaurante SET CEP = '01515-999' WHERE idRest = 1;
SELECT * FROM Restaurante;

/* 12) Exclua algum restaurante da tabela. Exiba novamente os dados da tabela após a exclusão */
DELETE FROM Restaurante WHERE idRest = 2;
SELECT * FROM Restaurante;

/* 13) Elimine a tabela */
DROP TABLE Restaurante;
