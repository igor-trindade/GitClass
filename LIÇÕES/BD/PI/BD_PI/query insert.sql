/* Inserts para a tabela empresa */
insert into empresa (nome, cnpj, email, senha, token) values
('Empresa 1', '11.111.111/0001-11', 'empresa1@email.com', 'senha1', 'token1'),
('Empresa 2', '22.222.222/0002-22', 'empresa2@email.com', 'senha2', 'token2'),
('Empresa 3', '33.333.333/0003-33', 'empresa3@email.com', 'senha3', 'token3'),
('Empresa 4', '44.444.444/0004-44', 'empresa4@email.com', 'senha4', 'token4'),
('Empresa 5', '55.555.555/0005-55', 'empresa5@email.com', 'senha5', 'token5'),
('Empresa 6', '66.666.666/0006-66', 'empresa6@email.com', 'senha6', 'token6'),
('Empresa 7', '77.777.777/0007-77', 'empresa7@email.com', 'senha7', 'token7'),
('Empresa 8', '88.888.888/0008-88', 'empresa8@email.com', 'senha8', 'token8'),
('Empresa 9', '99.999.999/0009-99', 'empresa9@email.com', 'senha9', 'token9');

/* Inserts para a tabela funcionario */
insert into funcionario (nome, email, senha, fk_idEmpresa) values
('Funcionario 1', 'func1@email.com', 'senha1', 1),
('Funcionario 2', 'func2@email.com', 'senha2', 2),
('Funcionario 3', 'func3@email.com', 'senha3', 3),
('Funcionario 4', 'func4@email.com', 'senha4', 4),
('Funcionario 5', 'func5@email.com', 'senha5', 5);

/* Inserts para a tabela estadio */
insert into estadio (nome, fk_idEmpresa) values
('Estádio Norte', 1),
('Estádio Sul', 2),
('Arena Central', 3),
('Estádio Leste', 4),
('Arena Oeste', 5);
/* 1. Inserindo dados na tabela setor */
insert into setor (nome, nivel, fk_idEstadio) values
('norte-superior', 'superior', 1),
('leste-superior', 'superior', 2),
('oeste-superior', 'superior', 3),
('sul-superior', 'superior', 4),
('norte-inferior', 'inferior', 5);

/* 2. Inserindo dados na tabela sensor */
insert into sensor (statusSensor, fk_idSetor) 
values
('ativo', 1),
('inativo', 2),
('manutenção', 3),
('ativo', 4),
('inativo', 5);

/* 3. Inserindo dados na tabela dadossensor */
insert into dadossensor (temperatura, umidade, nivelAlerta, dtHoraColeta, fk_idsensor) values
(22.123, 65.456, 'regular', '2025-04-07 10:00:00', 1),
(25.789, 60.123, 'alto', '2025-04-07 10:10:00', 2),
(20.456, 70.987, 'baixo', '2025-04-07 10:20:00', 3),
(23.654, 55.123, 'regular', '2025-04-07 10:30:00', 4),
(28.789, 52.456, 'alto', '2025-04-07 10:40:00', 5);