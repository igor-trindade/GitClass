/* Utilizar o banco de dados 'sprint1' */
USE sprint1;

/* Criar a tabela Carro */
CREATE TABLE Carro (
    idCarro INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(70),
    placa VARCHAR(7),
    marca VARCHAR(20)
);

/* Inserir dados na tabela Carro */
INSERT INTO Carro (nome, placa, marca) VALUES
    ('Honda Civic', 'ABC1234', 'Honda'),
    ('Toyota Corolla', 'DEF5678', 'Toyota'),
    ('Ford Mustang', 'GHI9012', 'Ford'),
    ('Chevrolet Camaro', 'JKL3456', 'Chevrolet'),
    ('Honda Fit', 'MNO7890', 'Honda');

/* O campo marca (tamanho 20) está muito pequeno. Aumentar para 40 caracteres */
ALTER TABLE Carro MODIFY COLUMN marca VARCHAR(40);

/* 1) Exibir todos os campos da tabela */
SELECT * FROM Carro;

/* 2) Exibir apenas os nomes e as placas dos carros */
SELECT nome, placa FROM Carro;

/* 3) Exibir apenas os dados dos carros de uma determinada marca (exemplo: 'Honda') */
SELECT * FROM Carro WHERE marca = 'Honda';

/* 4) Exibir apenas os dados dos carros de uma determinada placa (exemplo: 'ABC1234') */
SELECT * FROM Carro WHERE placa = 'ABC1234';

/* 5) Exibir os dados da tabela ordenados pela marca do carro */
SELECT * FROM Carro ORDER BY marca ASC;

/* 6) Exibir os dados da tabela ordenados pelo nome em ordem decrescente */
SELECT * FROM Carro ORDER BY nome DESC;

/* 7) Exibir os dados da tabela, dos carros cujo nome termine com uma determinada letra (exemplo: 'a') */
SELECT * FROM Carro WHERE nome LIKE '%a';

/* 8) Exibir os dados da tabela, dos carros cujo marca comece com uma determinada letra (exemplo: 'T') */
SELECT * FROM Carro WHERE marca LIKE 'T%';

/* 9) Exibir os dados da tabela, dos carros cuja placa tenha como segunda letra uma determinada letra (exemplo: 'B') */
SELECT * FROM Carro WHERE placa LIKE '_B%';

/* 10) Exibir os dados da tabela, dos carros cujo nome tenha como penúltima letra uma determinada letra (exemplo: 'c') */
SELECT * FROM Carro WHERE nome LIKE '%c_';

/* 11) Atualize uma placa de algum carro. Exiba novamente os dados da tabela após a atualização */
UPDATE Carro SET placa = 'XYZ1234' WHERE idCarro = 1;
SELECT * FROM Carro;

/* 12) Exclua algum carro da tabela. Exiba novamente os dados da tabela após a exclusão */
DELETE FROM Carro WHERE idCarro = 2;
SELECT * FROM Carro;

/* 13) Elimine a tabela Carro */
DROP TABLE Carro;
