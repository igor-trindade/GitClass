/* Utilizar o banco de dados 'sprint1' */
USE sprint1;

/* Criar a tabela Musica */
CREATE TABLE Musica (
    idMusica INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(40),
    artista VARCHAR(40),
    genero VARCHAR(40)
);

/* Inserir dados na tabela Musica */
INSERT INTO Musica (titulo, artista, genero)
VALUES
    ('Shape of You', 'Ed Sheeran', 'Pop'),
    ('Blinding Lights', 'The Weeknd', 'Pop'),
    ('Bohemian Rhapsody', 'Queen', 'Rock'),
    ('Stairway to Heaven', 'Led Zeppelin', 'Rock'),
    ('Havana', 'Camila Cabello', 'Pop'),
    ('Despacito', 'Luis Fonsi', 'Reggaeton'),
    ('Smells Like Teen Spirit', 'Nirvana', 'Rock');

/* a) Exibir todos os dados da tabela */
SELECT * FROM Musica;

/* b) Adicionar o campo curtidas do tipo int na tabela */
ALTER TABLE Musica
ADD COLUMN curtidas INT;

/* c) Atualizar o campo curtidas de todas as músicas inseridas */
UPDATE Musica SET curtidas = 100 WHERE idMusica = 1;
UPDATE Musica SET curtidas = 150 WHERE idMusica = 2;
UPDATE Musica SET curtidas = 200 WHERE idMusica = 3;
UPDATE Musica SET curtidas = 180 WHERE idMusica = 4;
UPDATE Musica SET curtidas = 220 WHERE idMusica = 5;
UPDATE Musica SET curtidas = 300 WHERE idMusica = 6;
UPDATE Musica SET curtidas = 250 WHERE idMusica = 7;

/* d) Modificar o campo artista do tamanho 40 para o tamanho 80 */
ALTER TABLE Musica
MODIFY COLUMN artista VARCHAR(80);

/* e) Atualizar a quantidade de curtidas da música com id=1 */
UPDATE Musica SET curtidas = 120 WHERE idMusica = 1;

/* f) Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3 */
UPDATE Musica SET curtidas = 160 WHERE idMusica = 2;
UPDATE Musica SET curtidas = 210 WHERE idMusica = 3;

/* g) Atualizar o nome da música com o id=5 */
UPDATE Musica SET titulo = 'Havana Remix' WHERE idMusica = 5;

/* h) Excluir a música com o id=4 */
DELETE FROM Musica WHERE idMusica = 4;

/* i) Exibir as músicas onde o gênero é diferente de funk */
SELECT * FROM Musica WHERE genero <> 'funk';

/* j) Exibir os dados das músicas que tem curtidas maior ou igual a 20 */
SELECT * FROM Musica WHERE curtidas >= 20;

/* k) Descrever os campos da tabela mostrando a atualização do campo artista */
DESCRIBE Musica;

/* l) Limpar os dados da tabela */
TRUNCATE TABLE Musica;
