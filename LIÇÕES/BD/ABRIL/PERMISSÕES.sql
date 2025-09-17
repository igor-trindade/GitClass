create user teste1 identified by '123';
show processlist;


create database sprint2;
use sprint2;

create table grupo(
idGrupo int primary key auto_increment,
nome varchar(50));

grant delete,select,update,insert 
on sprint2.* 
to teste1;


revoke select on sprint2.* 
from teste1;