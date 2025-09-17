CREATE DATABASE ClimeTech;
USE ClimeTech;

-- Tabela de Estádios
CREATE TABLE Estadio (
    id_estadio INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(255) NOT NULL
);

-- Tabela de Sensores
CREATE TABLE Sensor (
    id_sensor INT PRIMARY KEY AUTO_INCREMENT,
    id_estadio INT NOT NULL,
    localizacao VARCHAR(100),
    tipo ENUM('Temperatura', 'Umidade'),
    FOREIGN KEY (id_estadio) REFERENCES Estadio(id_estadio)
);

-- Tabela de Leituras dos Sensores
CREATE TABLE Leitura (
    id_leitura INT PRIMARY KEY AUTO_INCREMENT,
    id_sensor INT NOT NULL,
    valor FLOAT NOT NULL,
    unidade VARCHAR(10) NOT NULL,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_sensor) REFERENCES Sensor(id_sensor)
);

-- Tabela de Alertas
CREATE TABLE Alerta (
    id_alerta INT PRIMARY KEY AUTO_INCREMENT,
    id_leitura INT NOT NULL,
    tipo ENUM('Temperatura Alta', 'Umidade Baixa', 'Temperatura Baixa', 'Umidade Alta'),
    status ENUM('Pendente', 'Resolvido') DEFAULT 'Pendente',
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_leitura) REFERENCES Leitura(id_leitura)
);

-- Tabela de Usuários (Funcionários Autorizados)
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL,
    perfil ENUM('Administrador', 'Operador')
);

-- Tabela de Ações Corretivas (Registro de medidas tomadas)
CREATE TABLE Acao_Corretiva (
    id_acao INT PRIMARY KEY AUTO_INCREMENT,
    id_alerta INT NOT NULL,
    id_usuario INT NOT NULL,
    descricao TEXT NOT NULL,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_alerta) REFERENCES Alerta(id_alerta),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
