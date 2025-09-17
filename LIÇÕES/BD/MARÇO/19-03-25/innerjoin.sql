create database modelo_dado;

use modelo_dado;

create table cliente
(id int not null auto_increment,
 nome   varchar(45),
 primary key(id));
 
 insert into cliente(nome)
 values ('Sptech'),
        ('Itau'),
        ('Elera');
 
 
create table produto 
(id int not null auto_increment,
 descricao   varchar(45),
 valor_unitario decimal(10,2),
 primary key(id));
 
 insert into produto(descricao, valor_unitario)
 values ('Coca Cola', 5),
        ('Guarana', 4.5),
        ('Milho de Pipoca', 0.5);

 create table pedido
 (id   int not null auto_increment,
  fkcliente int not null,
  data_compra  date,
  date_entrega date,
  primary key(id),
  foreign key(fkcliente) references cliente(id)
);

insert into pedido(fkcliente, data_compra, date_entrega)
values (1, '2025-03-01', '2025-03-02'),
       (2, '2025-03-01', '2025-03-05'),
       (3, '2025-03-02', '2025-03-02'),
       (1, '2025-03-02', '2025-03-10');

create table item_pedido
(fkpedido   int not null,
 contador   int not null,
 fkproduto  int not null,
 quantidade decimal(10,3),
 valor_unitario  decimal(10,2), 
 primary key(fkpedido, contador),
 unique uk_item_pedido(fkpedido, fkproduto),
 foreign key(fkpedido) references pedido(id),
 foreign key(fkproduto) references produto(id)
 );

insert into item_pedido(fkpedido, contador, fkproduto, 
          quantidade, valor_unitario)
values (1, 1, 2, 2, 4.5),
       (1, 2, 3, 0.5, 0.5);

insert into item_pedido(fkpedido, contador, fkproduto, 
          quantidade, valor_unitario)
values (2, 1, 1, 2, 4.5);

drop index uk_item_pedido on item_pedido;

insert into item_pedido(fkpedido, contador, fkproduto, 
          quantidade, valor_unitario)
values (1, 3, 3, 0.5, 0.5);

select fkpedido, fkproduto, quantidade*ipe.valor_unitario valor_total_item
from item_pedido 
as ipe inner join produto as pro on pro.id = ipe.fkproduto; 

SELECT 
    ipe.fkpedido, 
    pro.descricao AS produto,
    cli.nome AS cliente,
    ipe.quantidade * ipe.valor_unitario AS valor_total_item
    
FROM
 
    item_pedido AS ipe
INNER JOIN 

    produto AS pro ON pro.id = ipe.fkproduto
INNER JOIN 

    pedido AS ped ON ped.id = ipe.fkpedido
INNER JOIN 

    cliente AS cli ON cli.id = ped.fkcliente;



/* sem apelido (as ipe)
select fkpedido, fkproduto, quantidade*item_pedido.valor_unitario valor_total_item
from item_pedido inner join produto on produto.id = item_pedido.fkproduto; 



