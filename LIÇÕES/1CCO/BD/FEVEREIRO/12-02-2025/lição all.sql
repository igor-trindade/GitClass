



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

-- Eliminar o database





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
         
         create database sprint1
         
         
         
         
         
         