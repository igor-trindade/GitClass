create database sprint2; 
use sprint2; 

CREATE TABLE disciplina(
  idDisc INT NOT NULL,
  nomeDisc VARCHAR(45) NULL,
  PRIMARY KEY (idDisc));

CREATE TABLE professor (
  idProfessor INT NOT NULL,
  nome VARCHAR(50) NULL,
  sobrenome VARCHAR(30) NULL,
  especialidade1 VARCHAR(40) NULL,
  especialidade2 VARCHAR(40) NULL,
  fkDisc INT,
  constraint foreign key (fkDisc) references disciplina(idDisc));
  
  
/*
Inserir pelo menos uns 6 professores.
Inserir pelo menos 3 disciplinas.
*/


INSERT INTO disciplina (idDisc, nomeDisc) 
VALUES (1, 'Matemática'),
(2, 'Física'),
(3, 'Química');

INSERT INTO professor (idProfessor, nome, sobrenome, especialidade1, especialidade2, fkDisc) 
VALUES (1, 'Carlos', 'Silva', 'Álgebra', 'Geometria', 1),
(2, 'Mariana', 'Souza', 'Mecânica', 'Termodinâmica', 2),
(3, 'João', 'Pereira', 'Química Orgânica', 'Química Inorgânica', 3),
(4, 'Ana', 'Costa', 'Estatística', 'Cálculo', 1),
(5, 'Ricardo', 'Lima', 'Eletromagnetismo', 'Óptica', 2),
(6, 'Fernanda', 'Oliveira', 'Bioquímica', 'Química Analítica', 3);

/*Configurar a chave estrangeira na tabela conforme sua modelagem (Pode
fazer no comando CREATE TABLE);*/

alter table professor add constraint foreign key  
(fkDisc) references disciplina(disc);

/*• Exibir os professores e suas respectivas disciplinas;*/

select * from professor p
inner join disciplina d 
on p.fkDisc = d.idDisc;

/*Exibir apenas o nome da disciplina e o nome do respectivo professor*/
select p.nome, p.sobrenome, d.nomeDisc 
from professor p
inner join disciplina d 
on p.fkDisc = d.idDisc;

/*Exibir os dados dos professores, suas respectivas disciplinas de um
determinado sobrenome;*/

select p.nome, p.sobrenome, p.especialidade1, p.especialidade2, d.nomeDisc
from professor p 
inner join disciplina d on p.fkDisc = d.idDisc
where p.sobrenome like '%s%' ;

/*Exibir apenas a especialidade1 e o nome da disciplina, de um determinado
professor, ordenado de forma crescente pela especialidade1*/
select p.especialidade1, d.nomeDisc 
from professor p 
inner join disciplina d on p.fkDisc = d.idDisc
where p.nome like 'ana'; 

/*Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50),
sigla (tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.
Inserir dados na tabela, procure inserir pelo menos 3 cursos.
Crie uma regra de negócio com uma nova tabela a sua escolha. Relacione a
tabela que você criou com a tabela curso e insira ou atualize os dados;*/

CREATE TABLE curso (
    idCurso INT PRIMARY KEY auto_increment,
    nome VARCHAR(50),
    sigla CHAR(3),
    coordenador VARCHAR(50));


INSERT INTO curso (idCurso, nome, sigla, coordenador) 
VALUES(1, 'Engenharia de Software', 'ESW', 'João Silva'),
(2, 'Ciência da Computação', 'CCO', 'Maria Oliveira'),
(3, 'Engenharia Elétrica', 'EEL', 'Carlos Santos');


CREATE TABLE turma (
    idTurma INT PRIMARY KEY auto_increment,
    nome VARCHAR(50),
    sala CHAR(1));
    
    insert into turma(idTurma, nome, sala)
    values (1, 'Turma da lambança','A'),
    (2, 'Turma do silencio','B'),
    (3, 'Turma tricolor paulista','A');

alter table curso add column fkTurma int;

alter table curso add constraint foreign key (fkTurma) references curso(idCurso); 

/*Execute os comandos para:
b) Faça um JOIN entre as duas tabelas;
c) Faça um JOIN com WHERE entre as duas tabelas;
d) Crie um campo com a restrição (constraint) de CHECK*/


update curso set fkTurma = 1 WHERE idCurso = 1; 
update curso set fkTurma = 2 WHERE idCurso = 2; 
update curso set fkTurma = 3 WHERE idCurso = 3; 


select t.nome, t.sala, c.nome as nome_materia , c.sigla, c.coordenador 
from curso c 
inner join turma t 
on c.fkTurma = t.idTurma;

select * from turma;
select * from Curso;

