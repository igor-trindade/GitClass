-- primeiros comandos - continuação
-- criar database
-- Etapa 1
create database aula_03;
-- colocar o database em uso
-- Etapa 2
use aula_03;
/*
criar a tabela de empresa 
onde o auto increment inicie a partir de 100
*/
-- Etapa 3
CREATE TABLE empresa (    
     id              INT auto_increment,    
     nome            VARCHAR(10),
     representante   varchar(05),
     primary key chave(id)
) auto_increment=100;  -- parametro opcional, se não informado inicia em 1
-- inserir dados na tabela empresa
-- Etapa 4
-- inclusão com declaração de colunas

alter table empresa modify nome varchar(50), 
					modify representante varchar (50);

desc empresa;

insert into empresa (nome, representante) 
values ('Tivit', 'João'),
	   ('Accenture', 'José'),
	   ('Rappi', 'Marta'),
	   ('Raizen', 'Maria Alice'),
	   ('C6 Bank', 'Mariana'),
	   ('Banco Safra', 'Sandra'),
	   ('Deloitte', 'Giovanni'),
	   ('Elera', 'Vera'),
	   ('Sptech', 'Alessandro');
-- inclusão sem declarar as colunas	   
insert into empresa
values (null, 'Itaú', 'henrique'),
	   (null, 'Bradesco', 'Isabela'),
	   (null, 'Stefanini', 'Edson'),
	   (null, 'Vivo', 'Lucas'),
	   (null, 'Claro', 'Leticia'),
	   (null, 'Quando Previdencia', 'Emili'),
	   (null, 'Fleury', 'Davi'),
	   (null, 'Avanade', 'Vera'),
	   (null, 'Atos', 'Ian');	   
-- verificar os dados da tabela
-- Etapa 5
select * from empresa; 

select id, 
concat('A empresa ',nome,' é representada pelo(a)',representante) 'Empresa e Representante'
from empresa;


