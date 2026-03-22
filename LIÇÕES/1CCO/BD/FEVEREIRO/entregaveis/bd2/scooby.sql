
/* Criação do banco de dados e definição de seu uso */
CREATE DATABASE estoque;
USE estoque;

/* Criação da tabela MisteriosSA */
CREATE TABLE MisteriosSA (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    data_compra DATE,
    preco DECIMAL(10,2),
    peso DECIMAL(10,2),
    data_retirada DATE DEFAULT NULL
);

/* 1. Insira na tabela, no mínimo 5 compras de alimentos com datas diferentes.
   Por enquanto, não preencha a coluna "data_retirada". */
INSERT INTO MisteriosSA (nome, data_compra, preco, peso)
VALUES
    ('Biscoitos Scooby', '2024-06-10', 25.00, 500),
    ('Cachorro-quente',    '2024-06-15', 35.50, 300),
    ('Biscoitos Scooby', '2024-05-20', 22.00, 450),
    ('Cachorro-quente',    '2024-07-10', 40.00, 350),
    ('Biscoitos Scooby', '2024-05-01', 20.00, 480);

/* 2. Verifique se os valores foram inseridos corretamente. */
SELECT * FROM MisteriosSA;

/* 3. Exiba os nomes, as datas de compra e retirada e o id dos alimentos ordenados a partir da data de compra mais antiga. */
SELECT id, nome, data_compra, data_retirada
FROM MisteriosSA
ORDER BY data_compra ASC;

/* 4. Alguém comeu uma caixa de biscoitos; atualize a data de retirada da caixa de "Biscoitos Scooby" que foi comprada a mais tempo. */
UPDATE MisteriosSA
SET data_retirada = CURDATE()
WHERE id = (
    SELECT id_min FROM (
        SELECT id AS id_min 
        FROM MisteriosSA
        WHERE nome = 'Biscoitos Scooby'
        ORDER BY data_compra ASC
        LIMIT 1
    ) AS subquery
);

/* 5. Altere o nome da coluna id para idComida. */
ALTER TABLE MisteriosSA
CHANGE id idComida INT AUTO_INCREMENT PRIMARY KEY;

/* 6. Altere o tipo do check para que os alimentos só possam ser "Biscoitos Scooby" ou "Cachorro-quente". */
ALTER TABLE MisteriosSA
ADD CONSTRAINT chk_nome CHECK (nome IN ('Biscoitos Scooby', 'Cachorro-quente'));

/* 7. Exiba os produtos onde o nome seja "Biscoitos Scooby", fazendo com que:
      - a coluna data_compra apareça como "data da compra"
      - a coluna data_retirada apareça como "data da retirada". */
SELECT idComida, nome, data_compra AS 'data da compra', data_retirada AS 'data da retirada'
FROM MisteriosSA
WHERE nome = 'Biscoitos Scooby';

/* 8. Exiba os alimentos que foram comprados antes do dia 25 de julho de 2024. */
SELECT * FROM MisteriosSA
WHERE data_compra < '2024-07-25';

/* 9. Exiba os alimentos que possuem um preço acima ou igual a 30.50. */
SELECT * FROM MisteriosSA
WHERE preco >= 30.50;

/* 10. Limpe a tabela. */
TRUNCATE TABLE MisteriosSA;
