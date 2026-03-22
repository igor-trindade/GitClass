/* Utilizar o banco de dados 'sprint1' */
USE sprint1;

/* Criar a tabela Atleta */
CREATE TABLE Atleta (
    idAtleta INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    modalidade VARCHAR(40),
    qtdMedalha INT
);

/* Inserir dados na tabela Atleta */
INSERT INTO Atleta (nome, modalidade, qtdMedalha)
VALUES
    ('Usain Bolt', 'Atletismo', 8),
    ('Michael Phelps', 'Natação', 23),
    ('Simone Biles', 'Ginástica', 7),
    ('Katie Ledecky', 'Natação', 7),
    ('Mo Farah', 'Atletismo', 4);

/* Exibir todos os dados da tabela Atleta */
SELECT * FROM Atleta;

/* Atualizar a quantidade de medalhas do atleta com id=1 */
UPDATE Atleta SET qtdMedalha = 9 WHERE idAtleta = 1;

/* Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3 */
UPDATE Atleta SET qtdMedalha = 24 WHERE idAtleta = 2;
UPDATE Atleta SET qtdMedalha = 8 WHERE idAtleta = 3;

/* Atualizar o nome do atleta com o id=4 */
UPDATE Atleta SET nome = 'Katie Ledecky II' WHERE idAtleta = 4;

/* Adicionar o campo dtNasc na tabela Atleta, tipo date */
ALTER TABLE Atleta ADD COLUMN dtNasc DATE;

/* Atualizar a data de nascimento de todos os atletas */
UPDATE Atleta SET dtNasc = '1986-08-21' WHERE idAtleta = 1;
UPDATE Atleta SET dtNasc = '1985-06-30' WHERE idAtleta = 2;
UPDATE Atleta SET dtNasc = '1997-03-14' WHERE idAtleta = 3;
UPDATE Atleta SET dtNasc = '1997-03-17' WHERE idAtleta = 4;
UPDATE Atleta SET dtNasc = '1983-03-23' WHERE idAtleta = 5;

/* Excluir o atleta com o id=5 */
DELETE FROM Atleta WHERE idAtleta = 5;

/* Exibir os atletas onde a modalidade é diferente de natação */
SELECT * FROM Atleta WHERE modalidade <> 'Natação';

/* Exibir os dados dos atletas que têm a quantidade de medalhas maior ou igual a 3 */
SELECT * FROM Atleta WHERE qtdMedalha >= 3;

/* Modificar o campo modalidade do tamanho 40 para o tamanho 60 */
ALTER TABLE Atleta MODIFY COLUMN modalidade VARCHAR(60);

/* Descrever os campos da tabela para mostrar a atualização do campo modalidade */
DESCRIBE Atleta;

/* Limpar os dados da tabela Atleta */
TRUNCATE TABLE Atleta;
