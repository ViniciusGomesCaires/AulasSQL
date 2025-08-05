create database AulaFAT;

use AulaFAT;

create table Alunos(
Id int primary key identity,
Nome varchar(100) not null,
Email varchar(100) unique,
DataCadastro datetime default getdate()
)

select * from Alunos;

alter table Alunos;
add CPF varchar(12);

alter table Alunos;
alter column CPF int;

-- Inserir Dados
insert into Alunos(Nome, Email) value ('João Fernando', 'joao@gmail.com'),  
    ('Maria Carvalho', 'maria@gmail.com'),  
    ('Bruna dos Santos', 'bruna@gmail.com'),  
    ('Pedro da Silva', 'pedro@gmail.com'),  
    ('Tiago Pereira', 'tiago@gmail.com');  
)

select Nome ,Email from Alunos;