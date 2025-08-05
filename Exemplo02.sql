use lojavirtual;

CREATE TABLE Produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10, 2)
);

show tables;

ALTER TABLE Produtos ADD Categoria VARCHAR(50);

SELECT * FROM Produtos;

CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

DROP TABLE Produtos;