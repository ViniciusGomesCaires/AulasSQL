-- Criar o banco de dados
CREATE DATABASE AULA;
USE AULA;

-- Criar a tabela contatos
CREATE TABLE contatos (
    nro_contato INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    telefone VARCHAR(15),
    data_cadastro DATE,
    email VARCHAR(100)
);

-- Inserir 50 registros na tabela contatos
INSERT INTO contatos (nome, sobrenome, telefone, data_cadastro, email) VALUES
('Bruno', 'Santos', '11999999999', '2023-01-15', 'bruno.santos@example.com'),
('Cauã', 'Silva', '11988888888', '2023-02-20', 'caua.silva@example.com'),
('Elaine', 'Carvalho', '11977777777', '2023-03-25', 'elaine.carvalho@example.com'),
('Isabelle', 'Silva', '11966666666', '2023-04-30', 'isabelle.silva@example.com'),
('Ana', 'Santos', '11944444444', '2023-05-10', 'ana.santos@example.com'),
('Carlos', 'Ferreira', '11933333333', '2023-06-05', 'carlos.ferreira@example.com'),
('João', 'Almeida', '11922222222', '2023-07-15', 'joao.almeida@example.com'),
('Fernanda', 'Pereira', '11911111111', '2023-08-10', 'fernanda.pereira@example.com'),
('Lucas', 'Gomes', '11900000000', '2023-09-20', 'lucas.gomes@example.com'),
('Mariana', 'Mendes', '11912345678', '2023-10-01', 'mariana.mendes@example.com'),
('Thiago', 'Barbosa', '11998765432', '2023-11-12', 'thiago.barbosa@example.com'),
('Amanda', 'Costa', '11976543210', '2023-12-05', 'amanda.costa@example.com'),
('Rafael', 'Ribeiro', '11945678901', '2024-01-15', 'rafael.ribeiro@example.com'),
('Camila', 'Martins', '11965432109', '2024-02-28', 'camila.martins@example.com'),
('Gustavo', 'Lima', '11974185296', '2024-03-20', 'gustavo.lima@example.com'),
('Beatriz', 'Duarte', '11985274169', '2024-04-15', 'beatriz.duarte@example.com'),
('Paulo', 'Henrique', '11996385274', '2024-05-05', 'paulo.henrique@example.com'),
('Juliana', 'Andrade', '11987654321', '2024-06-25', 'juliana.andrade@example.com'),
('Pedro', 'Rocha', '11912378945', '2024-07-10', 'pedro.rocha@example.com'),
('Larissa', 'Moura', '11909876543', '2024-08-15', 'larissa.moura@example.com'),
('Ricardo', 'Vasconcelos', '11987654322', '2024-09-01', 'ricardo.vasconcelos@example.com'),
('Daniela', 'Monteiro', '11965498732', '2024-10-10', 'daniela.monteiro@example.com'),
('Renato', 'Farias', '11985296374', '2024-11-20', 'renato.farias@example.com'),
('Vanessa', 'Lopes', '11912345679', '2024-12-05', 'vanessa.lopes@example.com'),
('André', 'Vieira', '11998765433', '2024-12-15', 'andre.vieira@example.com'),
('Carla', 'Neves', '11974185297', '2024-12-25', 'carla.neves@example.com'),
('Luís', 'Santana', '11985274170', '2025-01-05', 'luis.santana@example.com'),
('Marta', 'Ramos', '11996385275', '2025-01-15', 'marta.ramos@example.com'),
('Henrique', 'Cavalcante', '11987654322', '2025-02-01', 'henrique.cavalcante@example.com'),
('Cláudia', 'Rezende', '11912378946', '2025-02-15', 'claudia.rezende@example.com'),
('Eduardo', 'Pinto', '11909876544', '2025-03-05', 'eduardo.pinto@example.com'),
('Fabiana', 'Oliveira', '11987654323', '2025-03-20', 'fabiana.oliveira@example.com'),
('Marcos', 'Teixeira', '11965498733', '2025-04-10', 'marcos.teixeira@example.com'),
('Caroline', 'Souza', '11985296375', '2025-05-05', 'caroline.souza@example.com'),
('Rodrigo', 'Barreto', '11912345680', '2025-06-01', 'rodrigo.barreto@example.com'),
('Sandra', 'Azevedo', '11998765434', '2025-06-20', 'sandra.azevedo@example.com'),
('Leandro', 'Franco', '11974185298', '2025-07-15', 'leandro.franco@example.com'),
('Priscila', 'Campos', '11985274171', '2025-08-05', 'priscila.campos@example.com'),
('Victor', 'Lacerda', '11996385276', '2025-08-25', 'victor.lacerda@example.com'),
('Bianca', 'Araújo', '11987654324', '2025-09-15', 'bianca.araujo@example.com'),
('Rogério', 'Dias', '11912378947', '2025-10-01', 'rogerio.dias@example.com'),
('Luciana', 'Macedo', '11909876545', '2025-10-20', 'luciana.macedo@example.com'),
('Renata', 'Peixoto', '11987654325', '2025-11-10', 'renata.peixoto@example.com'),
('Maurício', 'Borges', '11965498734', '2025-11-25', 'mauricio.borges@example.com'),
('Tatiane', 'Cardoso', '11985296376', '2025-12-05', 'tatiane.cardoso@example.com'),
('Rafael', 'Dantas', '11912345681', '2025-12-20', 'rafael.dantas@example.com'),
('Kelly', 'Tavares', '11998765435', '2025-12-30', 'kelly.tavares@example.com');

INSERT INTO contatos (nome, sobrenome, telefone, data_cadastro, email) VALUES
('Gledison', 'Andrade', '1398009022', '2025-01-14', 'gleidson.andradebruno.santos@fat.org.br');

-- Selecionar todos os registros:
SELECT * FROM contatos;

-- Selecionar colunas específicas:
SELECT nome, sobrenome FROM contatos;

-- Filtrar registros com WHERE:
SELECT nome, sobrenome FROM contatos WHERE nro_contato = 48;

SELECT nome, sobrenome FROM contatos WHERE sobrenome = 'Andrade';

-- Excluir duplicados com DISTINCT:
SELECT DISTINCT sobrenome FROM contatos;

-- Cláusula ALL é o oposto de DISTINCT
SELECT ALL sobrenome FROM contatos;

-- Ordenar resultados:
SELECT nome FROM contatos ORDER BY nome DESC;

SELECT nome FROM contatos ORDER BY nome ASC;

-- Limitar o número de resultados:
SELECT * FROM contatos LIMIT 48;

-- Usar padrões com LIKE:
SELECT nome FROM contatos WHERE nome LIKE 'G%';