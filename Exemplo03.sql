create database cadastro;

use cadastro;

#alunos: Nome / Idade / Sexo / Peso / Altura / Nacionalidade / Curso / 

create table alunos (
nome varchar (30),
idade int (3),
sexo char(1),
peso float,
altura float,
nacionalidade varchar (20),
curso varchar (50)
);


describe alunos;

select * from alunos;
