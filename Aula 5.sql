-- Aula: SQL Server - Instrução SELECT (DQL)
-- Objetivo: Ensinar o uso da instrução SELECT para consultas em bancos de dados SQL Server, com foco em extração, filtragem e formatação de dados.

-- 1. Introdução ao DQL (Data Query Language)
-- DQL é um subconjunto da linguagem SQL focado na recuperação de dados.
-- O comando principal do DQL é o SELECT, usado para consultar e listar informações de tabelas.

-- 2. Preparando o ambiente
-- Criar o banco de dados chamado "Escola".
CREATE DATABASE Escola;
GO  

-- Definir que todas as operações serão feitas no banco "Escola".
USE Escola;
GO  

-- Criar a tabela "turma" com ID como chave primária.
CREATE TABLE turma (  
    id INT PRIMARY KEY IDENTITY(1,1),  -- ID auto incrementado
    nome VARCHAR(50) NOT NULL  -- Nome da turma
);  

-- Criar a tabela "aluno".
CREATE TABLE aluno (  
    id INT PRIMARY KEY IDENTITY(1,1),  -- ID auto incrementado
    nome VARCHAR(100) NOT NULL,  -- Nome do aluno
    email VARCHAR(100) NOT NULL UNIQUE  -- E-mail do aluno (deve ser único)
);  

-- Criar a tabela "professor".
CREATE TABLE professor (  
    id INT PRIMARY KEY IDENTITY(1,1),  -- ID auto incrementado
    nome VARCHAR(100) NOT NULL,  -- Nome do professor
    data_admissao DATE NOT NULL CHECK (data_admissao <= GETDATE()),  -- Admissão deve ser uma data válida
    id_turma INT NULL FOREIGN KEY REFERENCES turma(id)  -- Relacionamento com "turma"
);  

-- Inserir dados na tabela "turma".
INSERT INTO turma (nome) VALUES ('Turma A'), ('Turma B');  

-- Inserir dados na tabela "aluno".
INSERT INTO aluno (nome, email) VALUES  
    ('João Fernando', 'joao@gmail.com'),  
    ('Maria Carvalho', 'maria@gmail.com'),  
    ('Bruna dos Santos', 'bruna@gmail.com'),  
    ('Pedro da Silva', 'pedro@gmail.com'),  
    ('Tiago Pereira', 'tiago@gmail.com');  

-- Inserir dados na tabela "professor".
INSERT INTO professor (nome, data_admissao, id_turma) VALUES  
    ('Elson Marques', '2018-03-01', 1),  
    ('Pedro Botelho', '2018-03-01', 1),  
    ('Janaína Braga', '2016-06-04', 2),  
    ('Lucas Gonçalves', '2017-02-01', 2),  
    ('Gilmar Mendes', '2017-02-01', 1); 


-- Introdução ao DQL (Data Query Language) - DQL é um subconjunto da linguagem SQL focado na recuperação de dados.
-- O comando principal do DQL é o SELECT, usado para consultar e listar informações de tabelas.
-- 3. Sintaxe Básica do SELECT
-- Estrutura geral da instrução SELECT:
SELECT [colunas]  
FROM [tabela]  
[WHERE condição]  
[ORDER BY coluna];  

-- Exemplo 1: Selecionar todos os alunos da tabela "aluno".
SELECT * FROM aluno;  
SELECT * FROM professor;  
-- 4. Cláusulas Essenciais
-- a) WHERE: Filtrar dados
-- Selecionar professores da Turma A
SELECT nome, data_admissao   FROM professor  WHERE id_turma = 1;  

-- b) ORDER BY: Ordenar resultados
-- Listar alunos em ordem alfabética
SELECT nome, email FROM aluno ORDER BY nome ASC;  

-- c) Alias: Renomear colunas para melhor leitura
SELECT  
    nome AS Professor,  
    data_admissao AS Admissao  
FROM professor;  

-- 6. Funções e Operadores Úteis
-- a) LIKE: Busca parcial
-- Encontrar alunos cujo nome contenha "Santos"
SELECT *  
FROM aluno  
WHERE nome LIKE '%Santos%';  

-- 7. Boas Práticas no Uso de SELECT
-- Evite SELECT * (use apenas as colunas necessárias).
-- Use Alias para tornar o resultado mais legível.

-- 8. Professores admitidos após 2017
SELECT 
    nome AS Professor, 
    data_admissao AS Admissao 
FROM professor 
WHERE YEAR(data_admissao) > 2017 
ORDER BY data_admissao;  

-- 9. Exibir nome dos alunos e nome da turma (caso exista relação futura)
-- Passo 1: Adicionar coluna "id_turma" na tabela "aluno"
ALTER TABLE aluno 
ADD id_turma INT NULL 
CONSTRAINT FK_aluno_turma FOREIGN KEY (id_turma) REFERENCES turma(id);  

-- Atualizar os alunos com suas respectivas turmas
UPDATE aluno 
SET id_turma = 1 
WHERE id IN (1, 2); -- João e Maria na Turma A  

UPDATE aluno 
SET id_turma = 2 
WHERE id = 3; -- Bruna na Turma B  

-- LEFT JOIN: Relacionar aluno com turma
SELECT 
    A.nome AS Aluno, 
    T.nome AS Turma 
FROM aluno A 
LEFT JOIN turma T ON A.id_turma = T.id;  

-- LEFT JOIN garante que todos os alunos sejam listados, mesmo os sem turma.

-- 10. Exemplos adicionais de SELECT com WHERE
-- Selecionar todos os alunos da Turma A
SELECT * FROM aluno WHERE id_turma = 1;

-- Selecionar professores sem turma
SELECT * FROM professor WHERE id_turma IS NULL;

-- Alunos com email que não seja Gmail
SELECT nome, email  
FROM aluno  
WHERE email NOT LIKE '%@gmail.com';

-- Professores admitidos após 2017
SELECT nome, data_admissao  
FROM professor  
WHERE data_admissao > '2017-12-31';

-- Selecionar turmas "Turma A" ou "Turma B"
SELECT * FROM turma  
WHERE nome IN ('Turma A', 'Turma B');

-- Selecionar alunos com nome iniciando com "C"
SELECT * FROM aluno  
WHERE nome LIKE 'C%';

-- Selecionar professores admitidos entre 2016 e 2018

-- O operador BETWEEN é utilizado para filtrar valores dentro de um intervalo especificado. Ele é frequentemente usado com datas, números ou textos ordenáveis. A sintaxe básica é:
SELECT * FROM tabela
WHERE coluna BETWEEN valor_inicial AND valor_final;


SELECT * FROM professor  
WHERE data_admissao BETWEEN '2016-01-01' AND '2018-12-31';

INSERT INTO professor (nome, data_admissao, id_turma) VALUES
    ('José Ribeiro Mendes', '2016-01-01', 1);  

    INSERT INTO professor (nome, data_admissao, id_turma) VALUES
    ('Wilson Ribeiro Moreia', '2015-12-31', 1);  

    SELECT * FROM professor  
WHERE data_admissao BETWEEN '2015-01-01' AND '2016-12-31';