/* Utilizar o banco de dados 'sprint1' */
USE sprint1;

/* Criar a tabela Professor */
CREATE TABLE Professor (
    idProfessor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

/* Inserir dados na tabela Professor */
INSERT INTO Professor (nome, especialidade, dtNasc)
VALUES
    ('João Silva', 'Matemática', '1980-05-15'),
    ('Maria Oliveira', 'Física', '1975-11-22'),
    ('Carlos Souza', 'Matemática', '1983-03-10'),
    ('Ana Pereira', 'Química', '1990-08-30'),
    ('Beatriz Santos', 'Física', '1988-07-19'),
    ('Lucas Almeida', 'Biologia', '1982-01-05');

/* a) Exibir todos os dados da tabela Professor */
SELECT * FROM Professor;

/* b) Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’ */
ALTER TABLE Professor
ADD COLUMN funcao VARCHAR(50) CHECK (funcao IN ('monitor', 'assistente', 'titular'));

/* c) Atualizar os professores inseridos e suas respectivas funções */
UPDATE Professor SET funcao = 'titular' WHERE idProfessor = 1;
UPDATE Professor SET funcao = 'assistente' WHERE idProfessor = 2;
UPDATE Professor SET funcao = 'monitor' WHERE idProfessor = 3;
UPDATE Professor SET funcao = 'assistente' WHERE idProfessor = 4;
UPDATE Professor SET funcao = 'monitor' WHERE idProfessor = 5;
UPDATE Professor SET funcao = 'titular' WHERE idProfessor = 6;

/* d) Inserir um novo professor */
INSERT INTO Professor (nome, especialidade, dtNasc, funcao)
VALUES ('Fernando Costa', 'História', '1981-09-12', 'monitor');

/* e) Excluir o professor onde o idProfessor é igual a 5 */
DELETE FROM Professor WHERE idProfessor = 5;

/* f) Exibir apenas os nomes dos professores titulares */
SELECT nome FROM Professor WHERE funcao = 'titular';

/* g) Exibir apenas as especialidades e as datas de nascimento dos professores monitores */
SELECT especialidade, dtNasc FROM Professor WHERE funcao = 'monitor';

/* h) Atualizar a data de nascimento do idProfessor igual a 3 */
UPDATE Professor SET dtNasc = '1983-04-11' WHERE idProfessor = 3;

/* i) Limpar a tabela Professor */
TRUNCATE TABLE Professor;
