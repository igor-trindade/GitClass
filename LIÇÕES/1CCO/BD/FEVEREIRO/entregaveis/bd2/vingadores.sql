
/* Criação do banco de dados "vingadores" e seleção do mesmo */
CREATE DATABASE vingadores;
USE vingadores;

/* Criação da tabela "heroi" com os campos especificados */
CREATE TABLE heroi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    versao VARCHAR(45),
    habilidade VARCHAR(45),
    altura INT
);

/* Inserção de 5 heróis para derrotar o vilão Doutor Destino */
INSERT INTO heroi (nome, versao, habilidade, altura)
VALUES
    ('Homem de Ferro', 'Iron Man', 'Tecnologia Avançada', 185),
    ('Capitão América', 'Captain America', 'Liderança', 188),
    ('Hulk', 'The Incredible Hulk', 'Força Bruta', 244),
    ('Thor', 'Thor', 'Poder Divino', 198),
    ('Homem-Aranha', 'Spider-Man', 'Agilidade', 178);

/* 1. Exiba os dados inseridos na tabela */
SELECT * FROM heroi;

/* 2. Adicione um campo de regeneração, onde ele aceitará apenas os valores booleanos de TRUE ou FALSE */
ALTER TABLE heroi
ADD COLUMN regeneracao BOOLEAN;

/* 3. Modifique o campo versão para aceitar até 100 caracteres */
ALTER TABLE heroi
MODIFY COLUMN versao VARCHAR(100);

/* 4. Remova o herói de id 3 pois ele se morreu em batalha */
DELETE FROM heroi
WHERE id = 3;

/* 5. Chegou reforços, insira um novo herói para a equipe */
INSERT INTO heroi (nome, versao, habilidade, altura, regeneracao)
VALUES ('Capitã Marvel', 'Captain Marvel', 'Poder Cósmico', 172, TRUE);

/* 6. Exiba todos os dados inseridos na tabela onde o nome do herói começa com “C” ou “H” */
SELECT * FROM heroi
WHERE nome LIKE 'C%' OR nome LIKE 'H%';

/* 7. Exiba todos os dados inseridos na tabela onde o nome do herói não contém a letra “A” no campo nome */
SELECT * FROM heroi
WHERE nome NOT LIKE '%A%' AND nome NOT LIKE '%a%';

/* 8. Exiba apenas o nome do herói onde a altura for maior que 190 */
SELECT nome FROM heroi
WHERE altura > 190;

/* 9. Exiba todos os dados da tabela de forma decrescente pelo nome 
   onde a altura do herói for maior que 180 */
SELECT * FROM heroi
WHERE altura > 180
ORDER BY nome DESC;

/* 10. Limpe os dados da tabela */
DELETE FROM heroi;
