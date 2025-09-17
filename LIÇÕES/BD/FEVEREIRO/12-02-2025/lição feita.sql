



-- No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
create database sprint1;
use sprint1;
-- Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da 
-- tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha 
-- (int, representando a quantidade de medalhas que o atleta possui)
CREATE TABLE atleta (
    idAtleta INT PRIMARY KEY,
    nome VARCHAR(40),
    modalidade VARCHAR(40),
    qtdMedalha INT
);

-- Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade
insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (1, 'GIOVANNA', 'volei', 1); 

insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (2, 'ISABELA', 'Volei', 1); 

insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (3, 'GUILHERME', 'Natação', 2),
       (4, 'PAULO', 'Basquete', 1),
       (5, 'LUCAS', 'Basquete', 3),
       (6, 'GUSTAVO', 'Basquete', 0),
       (7, 'BIANCA', 'Volei de Praia', 1),
       (8, 'ANA', 'Volei de Praia', 1),
       (9, 'AMANDA', 'Volei', 2),
       (10, 'PEDRO', 'Futebol', 0);

-- Exibir todos os dados da tabela.
select * from atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
select nome, qtdMedalha from atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade.
select * from atleta where modalidade = 'volei';

-- Exibir os dados da tabela ordenados pela modalidade.
select * from atleta order by  modalidade;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
select * from atleta order by  qtdMedalha desc;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
select * from atleta where nome like '%s%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
select * from atleta where nome like 'a%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
select * from atleta where nome like '%a';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
select * from atleta where nome like '%r_';

-- Eliminar a tabela.
drop table atleta;

-- 2. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
create database sprint1;

use sprint1;

/* Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista
(tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
*/ 

CREATE TABLE Musica (
    idMusica INT PRIMARY KEY,
    titulo VARCHAR(40),
	artista VARCHAR(40),
	genero VARCHAR(40));
    
/* Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma
música, e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo
menos umas 7 músicas. */ 
    
    
insert into Musica (idMusica, artista, titulo, genero) 
values (1, 'GUILHERME', 'Meu amor', 'Sertanejo'),
       (2, 'PAULO', 'Meu anjo caido', 'Sertanejo'),
       (3, 'AMANDA', 'Faca que não corta','Classica'),
       (4, 'GUSTAVO', 'Menino da porteira', 'Sertanejo'),
       (5, 'AMANDA', 'Evidências', 'Sertanejo'),
       (6, 'ANA', 'Batom de cereja', 'Sertanejo'),
       (7, 'AMANDA', 'Sublime renuncia', 'Trap'),
       (8, 'PEDRO', 'Viva Vida', 'Sertanejo'),
       (9, 'AMANDA', 'Violeiro', 'Modão'),
       (10, 'ANA', 'Lek lek', 'Funk'),
       (11, 'AMANDA', 'Fur alise', 'Classica'),
       (12, 'PEDRO', 'Monlight', 'Trap'),
	   (13, 'MOZZARD', 'Chorei', 'Classica'),
       (14, 'BERNARDO', 'Buteconomia', 'Trap'),
       (15, 'LEONARDO', 'Bares da cidade', 'Sertanejo'),
       (16, 'LEONARDO', 'Carta', 'sertanejo'),
       (17, 'TIÃO CARREIRO', 'Mentira dela', 'Modão'),
       (18, 'MILHONARIO E JOSÉ RICO', 'Vá com Deus', 'Funk'),
       (19, 'ZEZÉ DE CAMARGO', 'Mulher chorrona', 'Classica'),
       (20, 'BRUNO E MARRONE', 'Amor bandido', 'Trap');
       
       -- a) Exibir todos os dados da tabela
       select * From Musica;
       
	-- b) Exibir apenas os títulos e os artistas das músicas.
       select titulo, artista From Musica;
       
	-- c) Exibir apenas os dados das músicas de um determinado gênero.
         select * from Musica where genero = 'Sertanejo';
         
    -- d) Exibir apenas os dados das músicas de um determinado artista.
      select * from Musica where artista = 'Leonardo';
      
      -- e) Exibir os dados da tabela ordenados pelo título da música
          select * from Musica order by  titulo asc;
          
		-- f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
       select * from Musica order by  artista  desc;
       
       -- g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
        select * from Musica where titulo like 'M%';
        
        -- h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
	    select * from Musica where titulo like '%a';
        
        -- i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
        select * from Musica where genero like '_e%';
        
	    -- j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
        select * from Musica where titulo like '%d_';
        
        -- Eliminar a tabela.
         drop table Musica;
         
         
         
         
         
/* Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.*/

         create database sprint1;
         /* Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um
filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos
uns 7 filmes.*/ 

        CREATE TABLE Filme (
    idFilme INT PRIMARY KEY,
    titulo VARCHAR(50),
	Genero VARCHAR(40),
	Diretor VARCHAR(40));
    
   INSERT INTO Filme (idFilme, Titulo, Genero, Diretor) 
VALUES 
    (1, 'Inception', 'Sci-Fi', 'Christopher Nolan'),
    (2, 'Pulp Fiction', 'Crime', 'Quentin Tarantino'),
    (3, 'The Irishman', 'Crime', 'Martin Scorsese'),
    (4, 'Gladiator', 'Action', 'Ridley Scott'),
    (5, 'Titanic', 'Romance', 'James Cameron'),
    (6, 'Jaws', 'Thriller', 'Steven Spielberg'),
    (7, 'The Lord of the Rings: The Fellowship of the Ring', 'Fantasy', 'Peter Jackson'),
    (8, 'Fight Club', 'Drama', 'David Fincher'),
    (9, 'The Godfather', 'Crime', 'Francis Ford Coppola'),
    (10, 'Interstellar', 'Sci-Fi', 'Christopher Nolan');

  -- a) Exibir todos os dados da tabela
       select * From Filme;
  
  -- b)Exibir apenas os títulos e os diretores dos filmes
       select titulo, diretor From Filme;
       
-- c) Exibir apenas os dados dos filmes de um determinado gênero.
        select * From Filme where genero like 'crime';
        
-- D) Exibir apenas os dados dos filmes de um determinado diretor
select * From Filme where diretor like 'Quentin Tarantino';

-- • Exibir os dados da tabela ordenados pelo título do filme.
     select * From Filme order by titulo asc;
     
-- • Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.

      select * From Filme order by diretor desc;
      
-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
select * From Filme where titulo like 'T%';
  
  -- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra
  select * From Filme where diretor like '%n';
  
/* Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma
determinada letra. */

select * from Filme where genero like '_h%';

/*Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma
determinada letra.*/

select * from Filme where titulo like '%o_';

--  • Elimine a tabela.

drop table filme; 


/* Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.*/

         create database sprint1;

/*Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50),
especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da
tabela.
*/
CREATE TABLE Professor (
    idProfessor INT PRIMARY KEY,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

/*Exemplo do campo data: ‘AAAA-MM-DD’ - ‘1983-10-13’.
Inserir dados na tabela, procurando colocar uma especialista para mais de um professor.
Procure inserir pelo menos uns 6 professores.
*/
INSERT INTO Professor (idProfessor, nome, especialidade, dtNasc) 
VALUES
    (1, 'Carlos Silva', 'Matemática', '1985-06-12'),
    (2, 'Ana Souza', 'Física', '1990-03-25'),
    (3, 'Marcos Pereira', 'Química', '1982-11-05'),
    (4, 'Roberta Santos', 'Matemática', '1979-09-30'),
    (5, 'Juliana Costa', 'História', '1988-12-18'),
    (6, 'Felipe Oliveira', 'Física', '1995-01-22');

-- Exibir todos os dados da tabela
SELECT * FROM Professor;

-- Exibir apenas as especialidades dos professores
SELECT especialidade FROM Professor;

-- Exibir apenas os dados dos professores de uma determinada especialidade
SELECT * FROM Professor WHERE especialidade = 'Física';

-- Exibir os dados da tabela ordenados pelo nome do professor
SELECT * FROM Professor ORDER BY nome;

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente
SELECT * FROM Professor ORDER BY dtNasc DESC;

-- Exibir os dados da tabela, dos professores cujo nome comece com a letra 'A'
SELECT * FROM Professor WHERE nome LIKE 'A%';

-- Exibir os dados da tabela, dos professores cujo nome termine com a letra 'a'
SELECT * FROM Professor WHERE nome LIKE '%a';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra 'o'
SELECT * FROM Professor WHERE nome LIKE '_o%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra 'r'
SELECT * FROM Professor WHERE nome LIKE '%r_';

-- Eliminar a tabela Professor
DROP TABLE Professor;




/* Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.*/

         create database sprint1;
/*Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla
(tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.
Inserir dados na tabela, procure inserir pelo menos 3 cursos.
*/

CREATE TABLE Curso (
    idCurso INT PRIMARY KEY,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(50)
);

-- Inserir dados na tabela Curso
INSERT INTO Curso (idCurso, nome, sigla, coordenador) 
VALUES
    (1, 'Ciência da Computação', 'CCO', 'João Silva'),
    (2, 'Engenharia Elétrica', 'EE', 'Maria Oliveira'),
    (3, 'Administração', 'ADM', 'Carlos Santos');

-- a) Exibir todos os dados da tabela
SELECT * FROM Curso;

-- b) Exibir apenas os coordenadores dos cursos
SELECT coordenador FROM Curso;

-- c) Exibir apenas os dados dos cursos de uma determinada sigla
SELECT * FROM Curso WHERE sigla = 'CCO';

-- d) Exibir os dados da tabela ordenados pelo nome do curso
SELECT * FROM Curso ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente
SELECT * FROM Curso ORDER BY coordenador DESC;

-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra
SELECT * FROM Curso WHERE nome LIKE 'C%';

-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra
SELECT * FROM Curso WHERE nome LIKE '%a';

-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra
SELECT * FROM Curso WHERE nome LIKE '_i%';

-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra
SELECT * FROM Curso WHERE nome LIKE '%r_';

-- j) Eliminar a tabela
DROP TABLE Curso;



/* Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.*/

         create database sprint1;

/*Você vai criar uma tabela para armazenar os dados de revistas (como por ex: Veja, Isto é,
Epoca, Quatro Rodas, Claudia, etc).*/
CREATE TABLE Revista (
    idRevista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    categoria VARCHAR(30)
);

-- Inserir 4 registros na tabela sem informar a categoria
INSERT INTO Revista (nome) 
VALUES 
    ('Veja'),
    ('Isto é'),
    ('Epoca'),
    ('Quatro Rodas');

-- Exibir todos os dados da tabela
SELECT * FROM Revista;

-- Atualizar os dados das categorias das revistas
UPDATE Revista 
SET categoria = 'Notícias' 
WHERE nome = 'Veja';

UPDATE Revista 
SET categoria = 'Notícias' 
WHERE nome = 'Isto é';

UPDATE Revista 
SET categoria = 'Atualidades' 
WHERE nome = 'Epoca';

-- Exibir os dados da tabela novamente para verificar se as categorias foram atualizadas
SELECT * FROM Revista;

-- Inserir mais 3 registros completos
INSERT INTO Revista (nome, categoria) 
VALUES 
    ('Claudia', 'Entretenimento'),
    ('Caras', 'Entretenimento'),
    ('Exame', 'Negócios');

-- Exibir novamente os dados da tabela
SELECT * FROM Revista;

-- Exibir a descrição da estrutura da tabela
DESCRIBE Revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres
ALTER TABLE Revista MODIFY categoria VARCHAR(40);

-- Exibir novamente a descrição da estrutura da tabela para verificar se alterou o tamanho da coluna categoria
DESCRIBE Revista;

-- Acrescentar a coluna periodicidade à tabela, que é VARCHAR(15)
ALTER TABLE Revista ADD COLUMN periodicidade VARCHAR(15);

-- Exibir os dados da tabela para verificar a nova coluna
SELECT * FROM Revista;

-- Excluir a coluna periodicidade da tabela
ALTER TABLE Revista DROP COLUMN periodicidade;

-- Exibir os dados da tabela novamente para verificar se a coluna foi removida
SELECT * FROM Revista;

-- excluir database 
drop database sprint1;