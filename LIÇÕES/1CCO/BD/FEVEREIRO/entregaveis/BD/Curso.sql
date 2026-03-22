/* Utilizar o banco de dados 'sprint1' */
USE sprint1;

/* Criar a tabela Curso */
CREATE TABLE Curso (
    idCurso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(50)
);

/* Inserir dados na tabela Curso */
INSERT INTO Curso (nome, sigla, coordenador)
VALUES
    ('Ciência da Computação', 'CC', 'João Silva'),
    ('Engenharia Civil', 'EC', 'Maria Oliveira'),
    ('Biologia', 'BIO', 'Carlos Souza');

/* a) Exibir todos os dados da tabela */
SELECT * FROM Curso;

/* b) Exibir apenas os coordenadores dos cursos */
SELECT coordenador FROM Curso;

/* c) Exibir apenas os dados dos cursos de uma determinada sigla (exemplo: 'CC') */
SELECT * FROM Curso WHERE sigla = 'CC';

/* d) Exibir os dados da tabela ordenados pelo nome do curso */
SELECT * FROM Curso ORDER BY nome ASC;

/* e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente */
SELECT * FROM Curso ORDER BY coordenador DESC;

/* f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra (exemplo: 'E') */
SELECT * FROM Curso WHERE nome LIKE 'E%';

/* g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra (exemplo: 'a') */
SELECT * FROM Curso WHERE nome LIKE '%a';

/* h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra (exemplo: 'i') */
SELECT * FROM Curso WHERE nome LIKE '_i%';

/* i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra (exemplo: 'a') */
SELECT * FROM Curso WHERE nome LIKE '%a_';

/* j) Eliminar a tabela Curso */
DROP TABLE Curso;
