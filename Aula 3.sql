create database if not exists Escola;

use Escola;

create table if not exists Alunos(
id_aluno int auto_increment primary key,
nome varchar(50) not null,
sobrenome varchar(50) not null,
data_nascimento date not null,
matricula varchar(15) not null unique,
email varchar(50) null,
ativo boolean default true
);

select * from Alunos;

insert into Alunos (nome, sobrenome,data_nascimento,matricula,email) values('João','Silva','2005-11-18','2024001','joao.silva@escola.com');
insert into Alunos (nome, sobrenome,data_nascimento,matricula,email) values('Ana','Costa','2005-03-10','2024002','ana.costa@escola.com');

start transaction;
update `Escola` - `Alunos` set `email` = 'ana.costa@mail.com' where (`id_aluno` = '4');
rollback;

commit;

delete from Alunos where id_aluno = 1;

truncate table Alunos;