/* Utilizar o banco de dados 'sprint1' */
USE sprint1;

/* Criar a tabela Filme */
CREATE TABLE Filme (
    idFilme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

/* Inserir dados na tabela Filme */
INSERT INTO Filme (titulo, genero, diretor)
VALUES
    ('Inception', 'Sci-Fi', 'Christopher Nolan'),
    ('The Dark Knight', 'Action', 'Christopher Nolan'),
    ('Parasite', 'Drama', 'Bong Joon Ho'),
    ('Interstellar', 'Sci-Fi', 'Christopher Nolan'),
    ('The Godfather', 'Crime', 'Francis Ford Coppola'),
    ('Pulp Fiction', 'Crime', 'Quentin Tarantino'),
    ('The Hateful Eight', 'Suspense', 'Quentin Tarantino');

/* Exibir todos os dados da tabela Filme */
SELECT * FROM Filme;

/* Adicionar o campo protagonista do tipo varchar(50) na tabela */
ALTER TABLE Filme
ADD COLUMN protagonista VARCHAR(50);

/* Atualizar o campo protagonista de todas os filmes inseridos */
UPDATE Filme SET protagonista = 'Leonardo DiCaprio' WHERE idFilme = 1; /* Inception */
UPDATE Filme SET protagonista = 'Christian Bale' WHERE idFilme = 2; /* The Dark Knight */
UPDATE Filme SET protagonista = 'Song Kang-ho' WHERE idFilme = 3; /* Parasite */
UPDATE Filme SET protagonista = 'Matthew McConaughey' WHERE idFilme = 4; /* Interstellar */
UPDATE Filme SET protagonista = 'Al Pacino' WHERE idFilme = 5; /* The Godfather */
UPDATE Filme SET protagonista = 'John Travolta' WHERE idFilme = 6; /* Pulp Fiction */
UPDATE Filme SET protagonista = 'Samuel L. Jackson' WHERE idFilme = 7; /* The Hateful Eight */

/* Modificar o campo diretor do tamanho 40 para o tamanho 150 */
ALTER TABLE Filme
MODIFY COLUMN diretor VARCHAR(150);

/* Atualizar o diretor do filme com id=5 */
UPDATE Filme SET diretor = 'Francis Coppola' WHERE idFilme = 5;

/* Atualizar o diretor dos filmes com id=2 e com o id=7 */
UPDATE Filme SET diretor = 'Chris Nolan' WHERE idFilme = 2;
UPDATE Filme SET diretor = 'Tarantino Quentin' WHERE idFilme = 7;

/* Atualizar o título do filme com o id=6 */
UPDATE Filme SET titulo = 'Pulp Fiction Remastered' WHERE idFilme = 6;

/* Excluir o filme com o id=3 */
DELETE FROM Filme WHERE idFilme = 3;

/* Exibir os filmes em que o gênero é diferente de drama */
SELECT * FROM Filme WHERE genero <> 'Drama';

/* Exibir os dados dos filmes que o gênero é igual a ‘suspense’ */
SELECT * FROM Filme WHERE genero = 'Suspense';

/* Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor */
DESCRIBE Filme;

/* Limpar os dados da tabela Filme */
TRUNCATE TABLE Filme;
