
/* Criação do banco de dados "game_store" e seleção do mesmo */
CREATE DATABASE game_store;
USE game_store;

/* Criação da tabela "jogo" com os campos especificados */
CREATE TABLE jogo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30),
    diretor VARCHAR(30),
    genero VARCHAR(30),
    data_lancamento DATE,
    nota DECIMAL(3,1),
    unidades INT
);

/* 1. Inserir pelo menos 5 registros na tabela */
INSERT INTO jogo (nome, diretor, genero, data_lancamento, nota, unidades)
VALUES
    ('The Witcher 3', 'CD Projekt Red', 'RPG', '2015-05-19', 9.5, 20),
    ('FIFA 23', 'EA Sports', 'Esporte', '2022-09-30', 8.2, 15),
    ('God of War', 'Cory Barlog', 'Ação', '2018-04-20', 9.8, 10),
    ('Minecraft', 'Markus Persson', 'Sandbox', '2011-11-18', 9.0, 25),
    ('Cyberpunk 2077', 'CD Projekt Red', 'RPG', '2020-12-10', 7.5, 5);

/* 2. Alterar a tabela para inserir uma coluna que represente o tipo de mídia,
   que deve aceitar apenas os valores "física" ou "digital" */
ALTER TABLE jogo
ADD COLUMN tipo_midia ENUM('física', 'digital');

/* 3. Atualizar os registros dos jogos inseridos anteriormente com o tipo de mídia */
UPDATE jogo SET tipo_midia = 'digital' WHERE id = 1;  /* The Witcher 3 */
UPDATE jogo SET tipo_midia = 'física'  WHERE id = 2;  /* FIFA 23 */
UPDATE jogo SET tipo_midia = 'física'  WHERE id = 3;  /* God of War */
UPDATE jogo SET tipo_midia = 'digital' WHERE id = 4;  /* Minecraft */
UPDATE jogo SET tipo_midia = 'digital' WHERE id = 5;  /* Cyberpunk 2077 */

/* 4. Exibir apenas os jogos com data de lançamento a partir de 2015 */
SELECT * FROM jogo
WHERE data_lancamento >= '2015-01-01';

/* 5. Exibir os jogos que tenham a letra "a" em seu nome e são de mídia física */
SELECT * FROM jogo
WHERE nome LIKE '%a%' AND tipo_midia = 'física';

/* 6. Exibir os jogos onde o nome do diretor não contenha a letra "e" */
SELECT * FROM jogo
WHERE diretor NOT LIKE '%e%';

/* 7. Alterar a tabela para criar uma checagem na inserção da nota, 
   onde o valor não pode ser menor que 0 nem maior que 10 */
ALTER TABLE jogo
ADD CONSTRAINT chk_nota CHECK (nota >= 0 AND nota <= 10);

/* 8. Exibir os jogos de um determinado gênero (exemplo: 'RPG') e que ainda estejam em estoque */
SELECT * FROM jogo
WHERE genero = 'RPG' AND unidades > 0;

/* 9. Excluir os jogos que não têm mais unidades disponíveis em estoque */
DELETE FROM jogo
WHERE unidades = 0;

/* 10. Renomear a coluna "diretor" para "criador" e exibir como ficou a estrutura da tabela */
ALTER TABLE jogo
CHANGE diretor criador VARCHAR(30);

DESCRIBE jogo;
