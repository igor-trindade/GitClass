/* No MySQL Workbench, crie o banco de dados "olimpiadas".*/
-- 1. Insira pelo menos 5 registros na tabela.
CREATE TABLE esporte (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    categoria VARCHAR(20),
    numero_de_jogadores INT,
    estreia DATE,
    pais_origem VARCHAR(30)
);

INSERT INTO esporte (nome, categoria, numero_de_jogadores, estreia, pais_origem)
VALUES 
    ('Futebol', 'Coletivo', 11, '1900-10-23', 'Inglaterra'),
    ('Basquete', 'Coletivo', 5, '1936-08-01', 'Estados Unidos'),
    ('Vôlei', 'Coletivo', 6, '1964-10-10', 'Estados Unidos'),
    ('Atletismo', 'Individual', 1, '1896-04-06', 'Grécia'),
    ('Natação', 'Individual', 1, '1896-04-06', 'Austrália');

-- 2. Altere a tabela para adicionar uma coluna popularidade que armazene a popularidade do esporte como um valor decimal entre 0 e 10 e exiba como ficou a estrutura da tabela.
ALTER TABLE esporte ADD COLUMN popularidade DECIMAL(3, 1);

DESCRIBE esporte;

-- 3. Atualize os registros para definir a popularidade dos esportes inseridos anteriormente.
UPDATE esporte SET popularidade = 9.5 WHERE nome = 'Futebol';
UPDATE esporte SET popularidade = 8.5 WHERE nome = 'Basquete';
UPDATE esporte SET popularidade = 7.0 WHERE nome = 'Vôlei';
UPDATE esporte SET popularidade = 8.0 WHERE nome = 'Atletismo';
UPDATE esporte SET popularidade = 7.5 WHERE nome = 'Natação';

-- 4. Exiba os esportes ordenados por popularidade em ordem crescente.
SELECT * FROM esporte ORDER BY popularidade ASC;

-- 5. Exiba apenas os esportes que estrearam nas Olimpíadas a partir do ano 2000.
SELECT * FROM esporte WHERE estreia >= '2000-01-01';

-- 6. Crie uma checagem para que não possa ser inserido valores dentro de estreia que seja menor que 06 de abril de 1896 e depois da data atual.
ALTER TABLE esporte
ADD CONSTRAINT check_estreia CHECK (estreia >= '1896-04-06' AND estreia <= CURDATE());

-- 7. Altere a tabela para excluir a regra de inserção de categoria, assim podendo colocar valores além de "Individual" ou "Coletivo".
ALTER TABLE esporte MODIFY categoria VARCHAR(20);

-- 8. Exiba apenas os esportes cujo nome do país de origem tenha "a" na segunda letra.
SELECT * FROM esporte WHERE SUBSTRING(pais_origem, 2, 1) = 'a';

-- 9. Exiba os dados onde o número de jogadores por equipe esteja entre 4 e 11.
SELECT * FROM esporte WHERE numero_de_jogadores BETWEEN 4 AND 11;

-- 10. Remova os registros onde id seja 1, 3 e 5.
DELETE FROM esporte WHERE id IN (1, 3, 5);
