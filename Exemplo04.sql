CREATE DATABASE IF NOT EXISTS Escola;

USE Escola;

CREATE TABLE IF NOT EXISTS Alunos (
id_aluno INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (50) NOT NULL,
sobrenome VARCHAR(50) NOT NULL,
data_nascimento DATE NOT NULL,
matricula VARCHAR (15) NOT NULL UNIQUE,
email VARCHAR (50) NULL,
ativo BOOLEAN DEFAULT TRUE
);

SELECT * FROM Alunos;

INSERT INTO Alunos (nome, sobrenome, data_nascimento, matricula, email) VALUES ('João', 'Silva', '2005-11-18', '2024001', 'joao.silva@escola.com');
INSERT INTO Alunos (nome, sobrenome, data_nascimento, matricula, email) VALUES ('Ana', 'Costa', '2005-03-10', '2024002', 'ana.costa@escola.com');
INSERT INTO Alunos (nome, sobrenome, data_nascimento, matricula, email) VALUES ('Gledison', 'Arruda', '2005-03-10', '2024003', 'gledison.arruda@escola.com');

START TRANSACTION;
UPDATE `escola`.`Alunos` SET `email` = 'gledison.arruda@fatcursos.org.br' WHERE (`id_aluno` = '3');
ROLLBACK;

COMMIT;

DELETE FROM Alunos WHERE id_aluno = 1;

TRUNCATE TABLE Alunos;






