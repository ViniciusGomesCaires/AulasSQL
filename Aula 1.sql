create database LojaVirtual;

use LojaVirtual;

create table Produtos(
ID int auto_increment primary key,
NOME varchar (100) not null,
PREÇO decimal (10,2) not null
);

select * from Produtos;

drop database LojaVirtual;