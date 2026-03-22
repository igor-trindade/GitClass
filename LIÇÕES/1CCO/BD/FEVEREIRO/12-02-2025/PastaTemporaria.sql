-- CRIANDO UM DATA BASE 
create database Aula_01;

-- DELETANDO UM DATA BASE 
DROP DATABASE SPTECH;

-- USE DATA BASE 
USE Aula_01;

-- CRIANDO TABLE
create table exemplo_3(
Id int primary key auto_increment, 
nome varchar(50) not null, 
nota decimal (4,2), 
data date);

-- auto_increment faz ser sequencial - (auto_increment ->  auto_increment =1000) começa a partir do 1000
 
 -- inserindo varios dados
 
insert into Exemplo_2 (nome, nota, data)
Values ('igor', 10, '2024-03-12'), 
('Cecilia', 9.5, '2024-05-13'),
('Bernardo', 8.5, '2024-05-15'),
('Ana', 7.5, '2024-05-20'),
('David', 6.0, '2024-05-20');

-- filtrando planilha 
select * from Exemplo_2 order by nome asc;

-- limpa a planilha 
truncate table Exemplo_2;

-- mostrar formato da coluna 
describe Exemplo_2;

-- alterando dados 
update Exemplo_2
set nota = '10'
where Id = 5;

-- deletando info
delete from Exemplo_2
where id = 1;



