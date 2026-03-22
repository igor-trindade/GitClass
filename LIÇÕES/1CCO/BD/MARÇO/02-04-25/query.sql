create database sprint2;
use sprint2;

create table funcionario(
id int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
emailPessoal varchar(45),
emailServico varchar(45));


create table dependente(
id int primary key auto_increment,
fkFuncionario int,
nome varchar(45),
parentesco varchar(45),
constraint foreign key (fkfuncionario) references funcionario(id));

alter table funcionario add column  fk_chefe int;


alter table funcionario add
constraint chef foreign key (fk_chefe) 
references funcionario(id);




insert into funcionario (nome, sobrenome, emailpessoal, emailservico)
values 
('carlos', 'silva', 'carlos.silva@gmail.com', 'carlos.silva@empresa.com'),
('ana', 'pereira', 'ana.pereira@gmail.com', 'ana.pereira@empresa.com'),
('joão', 'costa', 'joao.costa@gmail.com', 'joao.costa@empresa.com'),
('pietro', 'silva', 'pietro.silva@gmail.com', 'pietro.silva@empresa.com'),
('sofia', 'pereira', 'sofia.pereira@gmail.com', 'sofia.pereira@empresa.com'),
('pablo', 'costa', 'pablo.costa@gmail.com', 'pablo.costa@empresa.com');

insert into dependente (fkfuncionario, nome, parentesco)
values 
(1, 'maria silva', 'filha'),
(2, 'pedro pereira', 'filho'),
(3, 'clara costa', 'filha'),
(1, 'joão silva', 'filha'),
(2, 'mayara pereira', 'filho'),
(3, 'renato costa', 'filha');


update funcionario
set fk_chefe = 1
where id = 2; 

update funcionario
set fk_chefe = 1
where id = 3; 

update funcionario
set fk_chefe = 1
where id = 6; 



-- chefe de carlos é chefe de ana, sofia joão

update funcionario
set fk_chefe = 2
where id = 4; 
update funcionario
set fk_chefe = 2
where id = 5; 

select 
f.nome as funcionario,
f.emailPessoal as email_pessoal_Func,
d.nome as nome_dependente,
d.parentesco as grau_parent_func

from funcionario f inner join dependente d 
on d.fkFuncionario = f.id;


select  f.nome as chefe, fu.nome as funcionario
from funcionario f 
inner join funcionario fu
on f.id = fu.fk_chefe ;


select 
    fu.nome as nome_chefe,
    f.nome as funcionario,
    f.emailpessoal as email_pessoal_func,
    d.nome as nome_dependente,
    d.parentesco as grau_parent_func
from 
    funcionario f
inner join 
    dependente d on d.fkfuncionario = f.id
inner join 
    funcionario fu on fu.id = f.fk_chefe;

select * from funcionario;