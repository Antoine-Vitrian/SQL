/*
CREATE DATABASE Teste

CREATE TABLE Produtos(
id_produto INT,
nome_produto VARCHAR(50),
data_validade DATETIME,
preco_produto FLOAT
)

INSERT INTO Produtos(id_produto, nome_produto, data_validade, preco_produto)
VALUES
(1, 'Arroz', '2021-12-31', 22.50),
(2, 'Feijão', '2021-12-31', 8.99)

UPDATE Produtos
SET 
WHERE id_produto = 3

DELETE
FROM Produtos
WHERE id_produto = 3

DROP TABLE Produtos

ALTER TABLE Funcionarios
ADD 
cargo VARCHAR(100),
bonus FLOAT

DROP DATABASE Teste

ALTER TABLE Funcionarios
DROP COLUMN cargo, bonus
*/

-- Exercícios

-- EX. 1 

-- A
CREATE DATABASE BD_Teste

-- B
DROP DATABASE BD_Teste

-- C
CREATE DATABASE Exercícios

-- EX. 2
USE Exercícios
CREATE TABLE dCliente (
	ID_Cliente INT PRIMARY KEY,
	Nome_Cliente VARCHAR(100),
	Data_de_Nascimento DATE
	)
CREATE TABLE dGerente (
	ID_Gerente INT PRIMARY KEY,
	Nome_Gerente VARCHAR(100),
	Data_de_Contratação DATE,
	Salário DECIMAL(10, 2)
	)
CREATE TABLE fContratos (
	ID_Contrato INT PRIMARY KEY,
	Data_de_Assinatura DATE,
	ID_Cliente INT,
	ID_Gerente INT,
	Valor_Contrato DECIMAL(10, 2)
	)

-- EX. 3

-- Tabela 1
INSERT INTO dCliente ( ID_Cliente, Nome_Cliente, Data_de_Nascimento)
VALUES
	( 1, 'André Martins', '1989-02-12'),
	( 2, 'Bárbara Campos', '1992-05-07'),
	( 3, 'Carol Freitas', '1985-04-23'),
	( 4, 'Diego Cardoso', '1994-10-11'),
	( 5, 'Eduardo Pereira', '1988-11-09'),
	( 6, 'Fabiana Silva', '1989-09-02'),
	( 7, 'Gustavo Barbosa', '1993-06-27'),
	( 8, 'Helen Viana', '1990-02-11')

-- Tabela 2
INSERT INTO dGerente ( ID_Gerente, Nome_Gerente, Data_de_Contratação, Salário)
VALUES
	( 1, 'Lucas Sampaio', '2015-03-21', 6700),
	( 2, 'Mariana Padilha', '2011-01-10', 9900),
	( 3, 'Nathália Santos', '2018-10-03', 7200),
	( 4, 'Otávio Costa', '2017-04-18', 11000)

-- Tabela 3
INSERT INTO fContratos (ID_Contrato, Data_de_Assinatura, ID_Cliente, ID_Gerente, Valor_Contrato)
VALUES
	( 1, '2019-01-12', 8, 1, 23000),
	( 2, '2019-02-10', 3, 2, 15500),
	( 3, '2019-03-07', 7, 2, 6500),
	( 4, '2019-03-15', 1, 3, 33000),
	( 5, '2019-03-21', 5, 4, 11000),
	( 6, '2019-03-23', 4, 2, 5500),
	( 7, '2019-03-28', 9, 3, 55000),
	( 8, '2019-04-04', 2, 1, 31000),
	( 9, '2019-04-05', 10, 4, 3400),
	( 10, '2019-04-05', 6, 2, 9200)


-- EX. 4

INSERT INTO dCliente ( ID_Cliente, Nome_Cliente, Data_de_Nascimento)
VALUES
	( 11, 'Pelé', '1945-02-02')

INSERT INTO dGerente ( ID_Gerente, Nome_Gerente, Data_de_Contratação, Salário)
VALUES
	( 5, 'Cabral Jr.', '2018-03-21', 4200)

INSERT INTO fContratos (ID_Contrato, Data_de_Assinatura, ID_Cliente, ID_Gerente, Valor_Contrato)
VALUES
	( 11, '2019-06-11', 7, 2, 1050)

-- EX. 5
UPDATE fContratos
SET 
Data_de_Assinatura = '2019-03-17',
ID_Gerente = 2,
Valor_Contrato = 33500
WHERE ID_Contrato = 4

-- EX. 6
DELETE 
FROM dCliente
WHERE ID_Cliente = 11 

DELETE
FROM dGerente
WHERE ID_Gerente = 5

DELETE
FROM fContratos
WHERE ID_Contrato = 11

