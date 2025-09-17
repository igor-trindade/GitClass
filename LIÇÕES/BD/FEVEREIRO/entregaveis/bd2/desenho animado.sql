

-- Criação do banco de dados "desenho"
CREATE DATABASE desenho;
USE desenho;

-- Criação da tabela com os campos solicitados
CREATE TABLE desenhos_animados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50),
    data_lancamento DATE,
    emissora_original VARCHAR(50),
    classificacao INT,
    status VARCHAR(15),
    nota TINYINT,
    CONSTRAINT id_inicial CHECK (id >= 10),
    CONSTRAINT status_valido CHECK (status IN ('exibindo', 'finalizado', 'cancelado')),
    CONSTRAINT nota_valida CHECK (nota BETWEEN 1 AND 5)
);

-- 1. Exibir todos os dados da tabela
SELECT * FROM desenhos_animados;

-- 2. Exibir todos os desenhos com a classificação menor ou igual a 14 anos
SELECT * FROM desenhos_animados WHERE classificacao <= 14;

-- 3. Exibir todos os desenhos de uma mesma emissora original
SELECT * FROM desenhos_animados WHERE emissora_original = 'Nome_da_Emissora';

-- 4. Modificar o campo status, para que aceite apenas o status 'exibindo', 'finalizado', 'cancelado', tente inserir algum outro valor para ver se a regra foi aplicada
-- A regra já foi aplicada na criação da tabela, mas você pode tentar inserir um valor diferente para testar:
INSERT INTO desenhos_animados (titulo, data_lancamento, emissora_original, classificacao, status, nota)
VALUES ('Teste', '2025-01-01', 'Emissora Teste', 12, 'em_exibicao', 3); -- Isso deve gerar um erro

-- 5. Modificar o status 'exibindo' para 'finalizado' de 2 desenhos pelo ID
UPDATE desenhos_animados SET status = 'finalizado' WHERE id IN (10, 11);

-- 6. Deletar a linha do desenho de ID 12
DELETE FROM desenhos_animados WHERE id = 12;

-- 7. Exibir apenas os desenhos que comecem com uma determinada letra
SELECT * FROM desenhos_animados WHERE titulo LIKE 'A%'; -- Substitua 'A' pela letra desejada

-- 8. Renomear a coluna classificacao para classificacaoIndicativa
ALTER TABLE desenhos_animados CHANGE classificacao classificacaoIndicativa INT;

-- 9. Atualizar a nota e data de lançamento do desenho de ID 11
UPDATE desenhos_animados SET nota = 4, data_lancamento = '2022-01-01' WHERE id = 11;

-- 10. Limpe todos os dados da tabela
TRUNCATE TABLE desenhos_animados;

-- 11. Remover a regra do status do desenho
ALTER TABLE desenhos_animados DROP CONSTRAINT status_valido;
