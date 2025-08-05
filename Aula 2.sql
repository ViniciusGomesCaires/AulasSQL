create database AulaMySQL;

use AulaMySQL;

create table Clientes(
id_cliente int auto_increment primary key,
nome_cliente varchar(50) not null,
email_cliente varchar(50) null,
);

describe Clientes;

select * from Clientes;