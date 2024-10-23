
-- Criando Banco de Dados
CREATE DATABASE LojaDB;

-- Criando tabelas para o Banco de dados LojaDB
USE LojaDB
CREATE TABLE Clientes (
ClienteID INT PRIMARY KEY,
NomeCliente VARCHAR(100),
Cidade VARCHAR(50)
)

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,             
    DataPedido DATE,            
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID) 
)

CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    NomeProduto VARCHAR(100),   
    CategoriaID INT,           
    Preco DECIMAL(10, 2)
)

CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY,
    NomeCategoria VARCHAR(100)    
)

CREATE TABLE DetalhesPedidos (
    DetalheID INT PRIMARY KEY IDENTITY(1,1), 
    PedidoID INT,                             
    ProdutoID INT,                            
    Quantidade INT,                           
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),  
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
)

-- Inserindo dados nas tabelas do Banco de dados LojaDB
INSERT INTO Clientes (ClienteID, NomeCliente, Cidade) VALUES
(1, 'Maria Silva', 'São Paulo'),
(2, 'João Santos', 'Rio de Janeiro'), 
(3, 'Ana Costa', 'Belo Horizonte');

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido) VALUES
(1, 1, '2024-01-15'),
(2, 2, '2024-01-20'),  
(3, 1, '2024-02-10');

INSERT INTO Produtos (ProdutoID, NomeProduto, CategoriaID, Preco) VALUES
(1, 'Celular', 1, 1500.00),
(2, 'Televisão', 1, 3000.00),  
(3, 'Camiseta', 2, 50.00);

INSERT INTO Categorias (CategoriaID, NomeCategoria) VALUES
(1, 'Eletrônicos'),
(2, 'Vestuário');

INSERT INTO DetalhesPedidos (PedidoID, ProdutoID, Quantidade) VALUES
(1, 1, 2),  
(1, 2, 1),  
(2, 3, 5), 
(3, 2, 2);

-- Exercícios

-- Ex. 1
SELECT
Pedidos.PedidoID,
Clientes.NomeCliente,
Clientes.Cidade
FROM Pedidos
INNER JOIN Clientes
ON Clientes.ClienteID = Pedidos.ClienteID

-- Ex. 2 
SELECT
Clientes.NomeCliente,
Pedidos.PedidoID
FROM Clientes
LEFT JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID;

-- Ex. 3
SELECT
NomeCliente,
Cidade
FROM Clientes
UNION
SELECT
Clientes.NomeCliente,
Clientes.Cidade
FROM Pedidos
INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ClienteID;

-- Ex. 4
SELECT
NomeCliente,
COUNT(NomeCliente)
FROM Clientes
GROUP BY NomeCliente
UNION ALL
SELECT
Clientes.NomeCliente,
COUNT(Clientes.NomeCliente)
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.NomeCliente

-- Ex. 5




-- Exercícios Práticos

-- 1
SELECT 
Clientes.NomeCliente, 
COUNT(Pedidos.PedidoID) AS TotalPedidos
FROM Clientes
LEFT JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.NomeCliente;

-- 2
SELECT 
Clientes.NomeCliente,
SUM(DetalhesPedidos.Quantidade) AS TotalItens
FROM Clientes
INNER JOIN Pedidos 
ON Clientes.ClienteID = Pedidos.ClienteID
INNER JOIN DetalhesPedidos 
ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
GROUP BY Clientes.NomeCliente;

-- 3
SELECT 
Clientes.NomeCliente, 
SUM(DetalhesPedidos.Quantidade * Produtos.Preco) AS TotalGasto
FROM Clientes
INNER JOIN Pedidos 
ON Clientes.ClienteID = Pedidos.ClienteID
INNER JOIN DetalhesPedidos 
ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
INNER JOIN Produtos 
ON DetalhesPedidos.ProdutoID = Produtos.ProdutoID
GROUP BY Clientes.NomeCliente;

-- 4 
SELECT 
Produtos.NomeProduto, 
SUM(DetalhesPedidos.Quantidade) AS QuantidadeVendida
FROM Produtos
INNER JOIN DetalhesPedidos 
ON Produtos.ProdutoID = DetalhesPedidos.ProdutoID
GROUP BY Produtos.NomeProduto
ORDER BY QuantidadeVendida DESC;

-- 5

SELECT 
Pedidos.DataPedido, 
SUM(DetalhesPedidos.Quantidade * Produtos.Preco) AS Faturamento
FROM Pedidos
INNER JOIN DetalhesPedidos 
ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
INNER JOIN Produtos
ON DetalhesPedidos.ProdutoID = Produtos.ProdutoID
GROUP BY Pedidos.DataPedido
ORDER BY Pedidos.DataPedido DESC;

-- 6
SELECT
Clientes.NomeCliente,
COUNT(DISTINCT DetalhesPedidos.ProdutoID)
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
INNER JOIN DetalhesPedidos
ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
GROUP BY Clientes.NomeCliente

-- 7
SELECT
Pedidos.PedidoID,
AVG(DetalhesPedidos.Quantidade)
FROM Pedidos
INNER JOIN DetalhesPedidos
ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
GROUP BY Pedidos.PedidoID

-- 8
SELECT
COUNT(Pedidos.PedidoID),
MONTH(Pedidos.DataPedido) AS 'Mês',
YEAR(Pedidos.DataPedido) AS 'Ano'
FROM Pedidos
GROUP BY YEAR(Pedidos.DataPedido), MONTH(Pedidos.DataPedido)
ORDER BY YEAR(Pedidos.DataPedido) ASC, MONTH(Pedidos.DataPedido) ASC

-- 9
SELECT
Categorias.CategoriaID,
SUM(DetalhesPedidos.Quantidade * Produtos.Preco) AS 'Total vendido'
FROM Categorias
INNER JOIN Produtos
ON Categorias.CategoriaID = Produtos.CategoriaID
INNER JOIN DetalhesPedidos
ON Produtos.ProdutoID = DetalhesPedidos.ProdutoID
GROUP BY Categorias.CategoriaID


-- 10
ALTER TABLE Pedidos ADD Total DECIMAL(10, 2);
UPDATE Pedidos
SET Total = (
    SELECT SUM(DetalhesPedidos.Quantidade * Produtos.Preco)
    FROM DetalhesPedidos
    INNER JOIN Produtos ON DetalhesPedidos.ProdutoID = Produtos.ProdutoID
    WHERE DetalhesPedidos.PedidoID = Pedidos.PedidoID
);

SELECT
Clientes.NomeCliente,
MAX(Pedidos.Total)
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.NomeCliente



