-- No MySQL Workbench, crie o banco de dados "game_store" 
create database game_store;
use game_store;

/*Para ajudar Mário a organizar sua loja de jogos, um estudante da SPTech propôs
criar uma tabela chamada “jogo” que continha o id como número e chave primária
que se autoincrementa, o nome do jogo com tamanho máximo de 30 caracteres, o
nome do diretor do jogo com tamanho máximo de 30 caracteres, o gênero com
tamanho de 30 caracteres, a data de lançamento, a nota do jogo (entre 0-10) e um
campo para guardar a quantidade de unidades disponíveis.*/

CREATE TABLE jogo (    
     id              INT auto_increment,    
     nome               VARCHAR(30),
     diretor            VARCHAR(30),
     genero             VARCHAR(30),
     lançamento         date,
     nota               int,
     quantidade         int,
     primary key chave(id)) auto_increment=0;
     
     /* Insira pelo menos 5 registros para a tabela.*/
     insert into jogo (nome, diretor, genero, lançamento, nota, quantidade) 
     values ('God of war','João','Mundo aberto', '2020-01-01','10','200'),
      ('Elden Ring','Pedro','Mundo aberto', '2022-02-02','8','190'),
      ('Mario kart','Maria','Corrida', '2023-03-03','10','420'),
      ('Ghost Recon break point','Marcelo','Mundo aberto', '2024-04-04','10','100'),
      ('The last Of us','Julia','Ação', '2025-05-05','10','120');
      
      /*Altere a tabela para inserir uma coluna que represente o tipo de mídia que
deve armazenar o tipo de jogo apenas com os valores “física” ou “digital”.*/

      alter table jogo add column midia varchar(10);
      
      /* Atualize os registros dos jogos inseridos anteriormente*/
      
      update jogo set midia = 'Digital';
      
      /* Exiba apenas os jogos com data de lançamento a partir de 2015*/
select * from jogo where lançamento >= 01-01-2015;

/* Exiba os jogos que tenham a letra “a” em seu nome e são de mídia física. */
select * from jogo where nome like '%a%' and midia like'Digital';

/* 6. Exiba os jogos onde o nome do diretor não contenha a letra “e”.*/
select * from jogo where diretor not like '%e%';

/* Altere a tabela para criar uma checagem na inserção da nota, onde o valor
não pode ser menor que 0 e nem maior que 10. */
??????????????????????????ww
/* Exiba os jogos de um determinado gênero e que ainda esteja em estoque.*/

select * from jogo where quantidade >= 0 and genero like 'Mundo Aberto';

/* Exclua os jogos que não têm mais unidades disponíveis em estoque. */ 
????????????????????????????????????????w
/* . Renomeie a coluna “diretor” para “criador” e exiba como ficou a estrutura da
tabela. */

alter table jogo rename column diretor to criador;

select * from jogo;




/* No MySQL Workbench, crie o banco de dados "olimpiadas".*/
create database olimpiadas;
use olimpiadas;
/* Eles criaram uma tabela chamada "esporte" que continha id como número e chave
primária que se autoincrementa, nome que armazena o nome do esporte com
limite de 40 caracteres, a categoria do esporte com limite de 20 caracteres que
aceita apenas ("Individual" ou "Coletivo"), o número de jogadores que podem
participar por equipe, estreia que armazena a data de quando o esporte estreou
nas Olimpíadas e o nome do país de origem do esporte com até 30 caracteres. */ 
create table esporte(
id     int auto_increment,
nome               VARCHAR(40),
categoria            VARCHAR(20),
qtd_jogadores         int,
estreia         date,
país               VARCHAR(30),
primary key chave (id)) auto_increment  = 0;


insert into esporte(nome, categoria, qtd_jogadores, estreia, país)
values ('natação','individual','1','1980-01-01','Cuba'),
('natação','individual','1','1980-01-01','Cuba'),
('corrida','individual','1','1950-01-01','Argelia'),
('futebol','coletivo','11','1950-01-01','Brasil'),
('volei','coletivo','7','1960-01-01','Russia');


/*Altere a tabela para adicionar uma coluna popularidade que armazene a
popularidade do esporte como um valor decimal entre 0 e 10 e exiba como
ficou a estrutura da tabela.*/
alter table esporte add popularidade int;
/* . Atualize os registros para definir a popularidade dos esportes inseridos
anteriormente*/ 
update esporte set popularidade = 10; 

/*Exiba os esportes ordenados por popularidade em ordem crescente.*/


/*5. Exiba apenas os esportes que estrearam nas Olimpíadas a partir do ano
2000.*/
