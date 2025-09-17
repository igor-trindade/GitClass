/* Utilizar o banco de dados 'sprint1' */
USE sprint1;

/* Criar a tabela Serie */
CREATE TABLE Serie (
    idSerie INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    qtdTemporadas INT,
    status VARCHAR(40) CHECK (status IN ('em andamento', 'finalizada', 'não assistida'))
) AUTO_INCREMENT=100;

/* Inserir 4 registros na tabela Serie */
INSERT INTO Serie (nome, qtdTemporadas, status) VALUES
    ('Breaking Bad', 5, 'finalizada'),
    ('Stranger Things', 4, 'em andamento'),
    ('Friends', 10, 'finalizada'),
    ('Game of Thrones', 8, 'não assistida');

/* Exibir todos os dados da tabela Serie */
SELECT * FROM Serie;
