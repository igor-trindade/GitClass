create database sprint2;
use sprint2;


/*Sobre cada pet, o sistema guarda um identificador que é inicializado com 101 e
incrementado de forma automática. Esse identificador é a chave primária que
identifica um pet de forma única. Além do identificador, o sistema guarda o tipo do
animal (se é cachorro, gato, etc), o nome, a raça e a data de nascimento do pet.
*/
create table pet(
idpet int primary key auto_increment,
tipo varchar(30),
nome varchar(30),
raca varchar(30),
datanascimento date,
fk_cliente int,
constraint fkpet foreign key (fk_cliente) references cliente(idcliente)
) auto_increment=101;

/*- Sobre cada cliente, o sistema guarda também um identificador que identifica de
forma única cada cliente. Esse identificador começa a partir de 1 e é incrementado
de forma automática pelo sistema. Além do código, o sistema guarda o nome, o
telefone fixo, o telefone celular e o endereço de cada cliente.*/
create table cliente(
idcliente int primary key auto_increment,
nome varchar(30),
tellfixo varchar(20),
tellcelular varchar(20),
endereco varchar(50));

/*Inserir dados nas tabelas, de forma que exista mais de um tipo de animal diferente,
e que exista algum cliente com mais de um pet cadastrado. Procure inserir pelo
menos 2 clientes diferentes que tenham o mesmo sobrenome*/
insert into pet (tipo, nome, raca, datanascimento) values
('cachorro', 'rex', 'labrador', '2020-01-15'),
('gato', 'mia', 'siamês', '2018-05-20'),
('pássaro', 'kiwi', 'calopsita', '2022-03-10'),
('cachorro', 'buddy', 'golden retriever', '2019-09-12'),
('gato', 'luna', 'persa', '2021-07-08');

insert into cliente (nome, tellfixo, tellcelular, endereco) values
('joão silva', '1111-1111', '91111-1111', 'rua das flores, 123'),
('maria oliveira', '2222-2222', '92222-2222', 'avenida central, 456'),
('pedro santos', '3333-3333', '93333-3333', 'rua alegre, 789'),
('joão silva', '1111-1111', '91111-1111', 'rua das flores, 123'),
('marcos oliveira', '2222-3333', '92222-3333', 'avenida direita, 654');

/*- Exibir todos os dados de cada tabela criada, separadamente.*/
select * from cliente;
select * from pet;

/*- Fazer os acertos da chave estrangeira, caso não tenha feito no momento da
criação*/
-- feito!

/*- Altere o tamanho da coluna nome do cliente*/
alter table cliente modify column nome varchar(50);

/*- Exibir os dados de todos os pets que são de um determinado tipo (por exemplo:
cachorro).*/
select * from pet where tipo like 'cachorro';

/*Exibir apenas os nomes e as datas de nascimento dos pet*/
select nome, datanascimento from pet;

/*Exibir os dados dos pets ordenados em ordem crescente pelo nome.*/
select * from pet order by nome;

/*- Exibir os dados dos clientes ordenados em ordem decrescente pelo bairro.*/
select * from cliente order by endereco desc;

/*- Exibir os dados dos pets cujo nome começa com 'k'.*/
select * from pet where nome like 'k%';

/*Exibir os dados dos clientes que têm o mesmo sobrenome.*/
select * from cliente order by nome;
select * from cliente where nome like '%oliveira';

/* ou seja este que pesquisei. 
select nome, count(*) as quantidade
from cliente
where nome like '%oliveira'
group by nome
having count(*) > 1;
*/

/*- Alterar o telefone de um determinado cliente
- Exibir os dados dos clientes para verificar se alterou
*/
update cliente set tellfixo = '4444-2222' where idcliente = 19;
select * from cliente where idcliente = 19;

/*Exibir os dados dos pets e dos seus respectivos donos*/
select * from cliente 
inner join pet 
on cliente.idcliente = pet.fk_cliente;

/*Exibir os dados dos pets e dos seus respectivos donos, mas somente de um
determinado cliente.*/
select * from cliente c
inner join pet 
on c.idcliente = pet.fk_cliente
where c.nome like 'marcos%';

/*Exibir os dados dos pets e dos seus respectivos donos, mas somente de um
determinado cliente.
- Exibir os dados dos pets para verificar se excluiu.
*/
delete from pet where idpet = 15;
select * from pet;

/*Excluir as tabelas.*/
drop table cliente;
drop table pet;



create table pessoa (
idPessoa int primary key auto_increment,
nome varchar(30),
dataNascimento date,
profissao varchar(30));

create table gastos (
idGasto int primary key,
dataGasto date,
valor decimal(8,2),
descricao varchar(100),
fk_pessoa int,
constraint fkgastos foreign key (fk_pessoa) references pessoa(idPessoa)
);

-- Insira dados nas tabelas
insert into pessoa (nome, datanascimento, profissao) values
('Ana Silva', '1990-05-20', 'Engenheira'),
('Carlos Oliveira', '1985-10-15', 'Professor'),
('Maria Souza', '1992-03-12', 'Médica'),
('João Santos', '1988-07-25', 'Advogado'),
('Mariana Costa', '1995-09-30', 'Arquiteta');

insert into gastos (idGasto, dataGasto, valor, descricao, fk_pessoa) values
(1, '2025-04-01', 150.00, 'Compra de livros', 1),
(2, '2025-04-03', 300.50, 'Manutenção de carro', 2),
(3, '2025-04-04', 50.75, 'Almoço com cliente', 3),
(4, '2025-04-05', 1200.00, 'Compra de móveis', 4),
(5, '2025-04-06', 89.99, 'Assinatura de streaming', 5),
(6, '2025-04-07', 100.00, 'Jantar fora', 1),
(7, '2025-04-08', 250.75, 'Conserto de bicicleta', 2),
(8, '2025-04-09', 75.90, 'Cinema', 3),
(9, '2025-04-10', 500.00, 'Compra de eletrônicos', 4),
(10, '2025-04-11', 60.00, 'Compra de material escolar', 5);

-- Exiba os dados de cada tabela individualmente.

select * from pessoa;
select * from gastos;

/*Exiba somente os dados de cada tabela, mas filtrando por algum dado da
tabela (por exemplo, as pessoas de alguma profissão, etc).*/

select * from pessoa
where nome like 'Maria%';
select * from gastos
where descricao like '%livros%';

/*Exiba os dados de uma determinada pessoa e dos seus gastos
correspondentes*/
select * from pessoa p
inner join gastos on fk_pessoa =idPessoa
where p.nome like 'joão%';

/*Atualize valores já inseridos na tabela.*/

update gastos set descricao = 'God of War Steam' where idGasto = 1;

/*Exclua um ou mais registros de alguma tabela.*/

delete from gastos where idGasto = 1;
delete from gastos where idGasto = 4;




/*- Sobre cada setor, o sistema guarda um número que identifica de forma única cada
setor. Além desse identificador, o sistema guarda o nome do setor e o número do
andar do prédio em que fica o setor.*/

create table setor (
    idSetor int primary key auto_increment,
    nomeSetor varchar(50),
    numeroAndar int);

/*- Sobre cada funcionário, o sistema guarda um identificador que é a chave primária
que identifica um funcionário de forma única. Além do identificador, o sistema
guarda o nome do funcionário, seu telefone e seu salário (que deve ser maior do
que zero, ou seja, o sistema não pode aceitar valores negativos ou iguais a zero.*/


create table funcionario (
    idFuncionario int primary key auto_increment,
    nomeFuncionario varchar(50),
    tell varchar(20),
    salario decimal(10,2),
    fk_setor int,
    constraint fkfunc foreign key (fk_setor) references setor(idSetor));

/*Sobre cada acompanhante, o sistema guarda um identificador que forma uma
chave primária composta, juntamente com a identificação do funcionário que o
convidou para a festa. Além disso, o sistema guarda o nome, o tipo de relação que
o acompanhante tem com o funcionário e a data de nascimento do acompanhante.*/

create table acompanhante (
    idAcompanhante int,
    fk_funcionario int,
    Acompanhante varchar(50),
    tipoRelacao varchar(30),
    dataNascimento date,
    primary key (idAcompanhante, fk_funcionario),
    constraint fkacomp foreign key (fk_funcionario) 
    references funcionario(idFuncionario));

/*- Inserir dados nas tabelas, de forma que exista mais de um funcionário em cada
setor cadastrado.*/

insert into setor (nomeSetor, numeroAndar) values
('Recursos Humanos', 1),
('TI', 2),
('Financeiro', 3),
('Marketing', 4),
('Vendas', 5);


insert into funcionario (nomeFuncionario, tell, salario, fk_setor) values
('Ana Silva', '1111-1111', 3500.00, 1),
('João Pereira', '1111-2222', 3200.00, 1), 
('Carlos Oliveira', '2222-2222', 4500.00, 2),
('Fernanda Lima', '2222-3333', 4000.00, 2), 
('Maria Souza', '3333-3333', 4000.00, 3),
('Pedro Santos', '3333-4444', 3800.00, 3), 
('João Santos', '4444-4444', 3800.00, 4),
('Mariana Costa', '5555-5555', 4200.00, 5),
('Lucas Almeida', '5555-6666', 4100.00, 5); 


insert into acompanhante (idAcompanhante, fk_funcionario, Acompanhante, tipoRelacao, dataNascimento) values
(1, 1, 'Pedro Silva', 'Filho', '2010-05-20'),
(2, 2, 'Ana Oliveira', 'Esposa', '1987-10-15'),
(3, 3, 'Lucas Souza', 'Amigo', '1990-03-12'),
(4, 4, 'Fernanda Santos', 'Irmã', '1995-07-25'),
(5, 5, 'Gabriel Costa', 'Primo', '1998-09-30');

/*Exibir todos os dados de cada tabela criada, separadamente*/

select * from setor;
select * from funcionario;
select * from acompanhante;

/*Fazer os acertos da chave estrangeira, caso não tenha feito no momento da
criação*/

-- feito

/* Exibir os dados dos setores e dos seus respectivos funcionários.*/
select * from setor s
inner join funcionario f
on s.idSetor = f.fk_setor;

/*Exibir os dados dos funcionários e de seus acompanhantes*/

select * from 
funcionario f
inner join 
acompanhante ON idFuncionario = fk_funcionario;

/*Exibir os dados de apenas um funcionário (informar o nome do funcionário) e
os dados de seus acompanhantes.
*/

select * from funcionario f
inner join  setor s on f.fk_setor = s.idsetor
inner join acompanhante a on f.idfuncionario = a.fk_funcionario
where f.nomefuncionario like 'joão%';

/*Exibir os dados dos funcionários, dos setores em que trabalham e dos seus
acompanhantes.*/
select * from funcionario f
inner join setor s 
on f.fk_setor = s.idsetor
inner join acompanhante a 
on f.idfuncionario = a.fk_funcionario;
















create database treinador;

use treinador;

/*- Cada treinador treina mais de um nadador.
- Cada nadador tem apenas um treinador.
- Sobre cada nadador, o sistema guarda um identificador, que identifica de forma
única cada um deles. Esse identificador começa com o valor 100 e é inserido de
forma automática. Além desse identificador, o sistema guarda o nome, o estado de
origem e a data de nascimento do nadador.
- Sobre cada treinador, o sistema guarda um identificador, que identifica de forma
única cada treinador. Esse identificador começa com o valor 10 e é inserido de forma
automática. O sistema também guarda o nome do treinador, o telefone (apenas um
número de telefone) e o e-mail do treinador.
- Um treinador mais experiente orienta outros*/


/*c) Criar as tabelas correspondentes à sua modelagem*/
create table treinador (
    idTreinador int auto_increment primary key,
    Treinador varchar(100),
    tell varchar(20),
    email varchar(100),
    fk_orientador int,
    constraint fk_orientador foreign key (fk_orientador) 
    references treinador(idTreinador)
) auto_increment=10;

create table nadador (
    idNadador int auto_increment primary key,
    Nadador varchar(100),
    estadoOrigem varchar(4),
    dataNasc date,
    fk_treinador int,
    constraint fk_treinador foreign key (fk_treinador)
    references treinador(idTreinador)
);


/*Inserir dados nas tabelas, de forma que exista mais de um nadador para algum
treinador, e mais de um treinador sendo orientado por algum treinador mais
experiente.*/


insert into treinador (Treinador, tell, email, fk_orientador) 
values 
('Carlos Silva', '11999999999', 'carlos@exemplo.com', null),
('Fernanda Costa', '11988888888', 'fernanda@exemplo.com', 10),
('João Pereira', '11977777777', 'joao@exemplo.com', 10);


insert into nadador (Nadador, estadoOrigem, dataNasc, fk_treinador)
values 
('Lucas Andrade', 'SP', '2005-03-10', 11),
('Maria Oliveira', 'RJ', '2006-07-21', 11),
('Pedro Santos', 'MG', '2007-01-15', 12),
('Ana Souza', 'RS', '2005-12-03', 12);

/*Exibir todos os dados de cada tabela criada, separadamente*/
select * from treinador;
select * from nadador;

/*Exibir os dados dos treinadores e os dados de seus respectivos nadadores.*/
select * from treinador t
inner join  nadador n on t.idTreinador = n.fk_treinador;

/* Exibir os dados de um determinado treinador (informar o nome do treinador na
consulta) e os dados de seus respectivos nadadores.*/
select * from treinador t
inner join nadador n on t.idTreinador = n.fk_treinador
where  t.Treinador = 'Fernanda Costa';

/*Exibir os dados dos treinadores e os dados dos respectivos treinadores
orientadores.*/
select * from treinador t
inner join treinador o on t.fk_orientador = o.idTreinador;

/*Exibir os dados dos treinadores e os dados dos respectivos treinadores
orientadores, porém somente de um determinado treinador orientador (informar o
nome do treinador na consulta)*/
select * from treinador t
inner join treinador o on t.fk_orientador = o.idTreinador
where o.Treinador = 'Carlos Silva';

/* Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados
dos respectivos treinadores orientadores*/
select * from treinador t
inner join nadador n on t.idTreinador = n.fk_treinador
inner join treinador o on t.fk_orientador = o.idTreinador;

/* Exibir os dados de um treinador (informar o seu nome na consulta), os dados dos
respectivos nadadores e os dados do seu treinador orientador.*/
select * from treinador t
inner join nadador n on t.idTreinador = n.fk_treinador
inner join treinador o on t.fk_orientador = o.idTreinador
where t.Treinador = 'João Pereira';




