create database climetech;

use climetech;

create table empresa (
    idempresa int primary key auto_increment,
    nome varchar(100) not null,
    cnpj char(18) not null,
    email varchar(100) not null,
    senha varchar(100) not null,
    token varchar(100)
);

select * from empresa;

create table funcionario (
    idFuncionario int primary key auto_increment,
    nome varchar(50) not null,
    email varchar(75) not null,
    senha varchar(25) not null,
    fk_idEmpresa int,
    constraint fk_funcionario 
    foreign key(fk_idEmpresa) references empresa(idEmpresa)
);



create table estadio (
    idEstadio int primary key auto_increment,
    nome varchar(100) not null,
    fk_idEmpresa int,
    constraint fk_estadioempresa 
    foreign key(fk_idempresa) references empresa(idempresa)
);

create table setor (
    idSetor int primary key auto_increment,
    nome varchar(50) not null,
    nivel varchar(15) ,
    fk_idEstadio int,
    constraint chk_nomesetor check (nome in ('norte-superior', 'leste-superior', 'oeste-superior', 'sul-superior',
                                             'norte-inferior', 'leste-inferior', 'oeste-inferior', 'sul-inferior')),
    constraint fk_setorestadio 
    foreign key(fk_idEstadio) references estadio(idestadio)
);



select * from setor;

create table sensor (
    idSensor int primary key auto_increment,
    statusSensor varchar(45) not null,
    fk_idSetor int,
    constraint fk_sensorsetorestadio 
    foreign key(fk_idsetor) references setor(idsetor)
);




create table dadossensor(
    idDadossensor int primary key auto_increment,
    temperatura decimal(5,3),
    umidade decimal(5,3),
    nivelAlerta varchar(40),
    constraint chk_nivelsetor 
    check (nivelAlerta in ('alto', 'regular','baixo')),
    dtHoraColeta timestamp default current_timestamp,
    fk_idsensor int,
    constraint fk_sensordados 
    foreign key(fk_idsensor) references sensor(idsensor));


select * from empresa;
select * from funcionario;
select * from estadio;
select * from sensor;