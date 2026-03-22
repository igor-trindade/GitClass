/* Utilizar o banco de dados 'sprint1' */
USE sprint1;

/* Criar a tabela Revista */
CREATE TABLE Revista (
    idRevista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    categoria VARCHAR(30)
);

/* Inserir 4 registros na tabela sem informar a categoria */
INSERT INTO Revista (nome) VALUES
    ('Veja'),
    ('Isto é'),
    ('Epoca'),
    ('Quatro Rodas');

/* Exibir todos os dados da tabela */
SELECT * FROM Revista;

/* Atualizar as categorias das 3 primeiras revistas e exibir novamente os dados */
UPDATE Revista SET categoria = 'Notícias' WHERE idRevista = 1;
UPDATE Revista SET categoria = 'Notícias' WHERE idRevista = 2;
UPDATE Revista SET categoria = 'Notícias' WHERE idRevista = 3;
SELECT * FROM Revista;

/* Inserir mais 3 registros completos */
INSERT INTO Revista (nome, categoria) VALUES
    ('Claudia', 'Moda e Estilo'),
    ('Superinteressante', 'Ciência'),
    ('National Geographic', 'Natureza');

/* Exibir novamente os dados da tabela */
SELECT * FROM Revista;

/* Exibir a descrição da estrutura da tabela */
DESCRIBE Revista;

/* Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres */
ALTER TABLE Revista MODIFY COLUMN categoria VARCHAR(40);

/* Exibir novamente a descrição da estrutura da tabela */
DESCRIBE Revista;

/* Acrescentar a coluna periodicidade à tabela, que é varchar(15) */
ALTER TABLE Revista ADD COLUMN periodicidade VARCHAR(15);

/* Exibir os dados da tabela */
SELECT * FROM Revista;

/* Excluir a coluna periodicidade da tabela */
ALTER TABLE Revista DROP COLUMN periodicidade;
