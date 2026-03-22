CREATE DATABASE vendas;

USE vendas;

CREATE TABLE cliente (
    cpf INT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL
);

insert into cliente (cpf,nome,email)
values (1,'Sptech','a@g'),
(2,'Itau','b@g'),
(3,'Bradesco','c@g');

CREATE TABLE pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fkcliente INT NOT NULL,
    qtd DECIMAL(10,3),
    valor_unitario DECIMAL(10,2),
    dtEntrega DATE,
    FOREIGN KEY (fkcliente) REFERENCES cliente (cpf)
);

INSERT INTO pedido (fkcliente, qtd, valor_unitario, dtEntrega)
VALUES 
    (1, 2, 5.00, '2025-01-01'),
    (2, 2, 5.00, '2025-01-01'),
    (2, 2, 5.00, '2025-01-01');


CREATE TABLE produto (
    id INT PRIMARY KEY,
    descricao VARCHAR(45),
    valor_item DECIMAL(10,2)
);


insert into produto (id, descricao, valor_item)
values (1,'coca','5.00'),
(2,'Guaraná','4.50');


CREATE TABLE itemPedido (
    contador INT,
    fkPedido INT,
    qtd INT, 
    valorUnit DECIMAL(10,2),
    fkProduto INT,
    FOREIGN KEY (fkProduto) REFERENCES produto (id),
    FOREIGN KEY (fkPedido) REFERENCES pedido (id),
    PRIMARY KEY (fkPedido, contador));

INSERT INTO itemPedido (fkPedido, contador, qtd, valorUnit, fkProduto)
VALUES 
    (1, 1, 2, 5.00, 1),
    (1, 2, 3, 5.00, 1), 
    (2, 1, 1, 4.50, 2);
    
select * from itemPedido;

INSERT INTO itemPedido (contador, fkPedido, qtd, valorUnit, fkProduto)
VALUES 
    (3, 1, 4, 0.50, 2);
    
    
    
    
