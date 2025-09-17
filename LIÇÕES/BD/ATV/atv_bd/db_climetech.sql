create database climetech;

use climetech;


create table empresa(
	idEmpresa int primary key auto_increment,
    nome varchar(100),
    cnpj char(18),
    email varchar(100),
    senha varchar(100),
    token varchar(100)
);

create table funcionarioEmpresa(
	idFuncionarioEmpresa int primary key auto_increment,
    nome varchar(50),
    email varchar(75),
    senha varchar(25),
	idEmpresa int,
    constraint fk_FuncionarioEmpresa foreign key(idEmpresa) references empresa(idEmpresa)
);

create table estadio(
	idEstadio int primary key auto_increment,
    nome varchar(100),
    idEmpresa int,
    constraint fkEstadioEmpresa foreign key(idEmpresa) references empresa(idEmpresa)
);

create table setor(
	idSetor int primary key auto_increment,
    nome varchar(50),
	nivel varchar(15),
    idEstadio int,
    constraint chk_nomeSetor check (nome in ('Norte','Leste','Oeste','Sul')),
    constraint chk_nivelSetor check (nivel in ('Inferior','Superior')),
    constraint fk_SetorEstadio foreign key(idEstadio) references estadio(idEstadio)
);

create table sensor(
	idSensor int primary key auto_increment,
    statusSensor varchar(45),
    idSetor int,
    constraint fk_SensorSetorEstadio foreign key(idSensor) references setor(idSetor)
);

create table dadosSensor(
	idDadosSensor int primary key auto_increment,
    temperatura decimal (5,3),
	umidade decimal (5,3),
    nivelAlerta varchar(40),
    dtHoraColeta datetime,
    idSensor int,
    constraint fkSensorDados foreign key(idSensor) references sensor(idSensor)
);

/*
	nivel de alerta varia de acordo com umidade e temperatura.
 */
