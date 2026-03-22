create table serie(
                      uuid uuid primary key,
                      nome varchar(255),
                      plataforma varchar(255),
                      nota int
);

insert into serie (uuid, nome, plataforma, nota) values
                                                   ('d3ae3c89-495b-40ee-b25e-1b32c609aa12', 'Breaking Bad', 'Netflix', 10),
                                                   ('7a123ea7-a87e-4034-9dab-1043665152db', 'Stranger Things', 'Netflix', 9),
                                                   ('cc482e60-72d5-4ca6-8650-2bb7df4f544e', 'The Boys', 'Prime Video', 9),
                                                   ('ef847d9f-e087-47b8-9e0b-a0790f3e9c3f', 'The Last of Us', 'HBO Max', 10),
                                                   ('f7ae50dd-f866-4da5-b035-286c24e9b180', 'Loki', 'Disney+', 8);