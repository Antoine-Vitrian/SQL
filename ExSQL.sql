/*SELECT DISTINCT ColorName
FROM DimProduct*/

/*SELECT FirstName, LastName, EmailAddress
FROM DimCustomer*/

/*SELECT TOP(10) FirstName
FROM DimCustomer*/

/*SELECT *
FROM DimCustomer*/

/*SELECT 
ProductName AS Produto,
BrandName AS Marca,
ColorName AS Cor
FROM DimProduct*/

-- Exercícios

-- 1a
/*SELECT ProductKey
FROM DimProduct*/

-- 1b
/*SELECT CustomerKey
FROM DimCustomer*/
-- R: Reduziu

-- 2a
/*SELECT CustomerKey, FirstName, EmailAddress, BirthDate
FROM DimCustomer*/

-- 2b
/*SELECT
FirstName AS Nome, 
EmailAddress AS Email, 
BirthDate AS Aniversário
FROM DimCustomer*/

--3a
/*SELECT TOP(100)*
FROM DimCustomer*/

--3b
/*SELECT TOP(10) PERCENT *
FROM DimCustomer*/

--3c
/*SELECT TOP(100) FirstName, EmailAddress, BirthDate
FROM DimCustomer*/

-- 3d
/*SELECT TOP(100) 
FirstName AS PrimeiroNome,
EmailAddress AS Email,
BirthDate AS Aniversario
FROM DimCustomer*/

-- 4
/*SELECT DISTINCT 
Manufacturer AS Fabricante,
BrandName AS Marca
FROM DimProduct*/

--5
/*SELECT DISTINCT ProductKey
FROM FactSales

SELECT ProductKey
FROM DimProduct*/
-- R: 1 produto não foi vendido

-- Exercício 1

/*SELECT TOP(100) 
SalesKey AS Id_venda,
SalesAmount AS Total_venda
FROM FactSales
ORDER BY SalesAmount DESC*/

-- Exercício 2

/*SELECT TOP(10) UnitPrice, Weight, Size
FROM DimProduct
ORDER BY UnitPrice DESC, Weight DESC, Size DESC*/

-- Exercício 3

/*SELECT 
Weight AS Peso,
ProductName AS Nome_produto
FROM DimProduct
WHERE Weight >= 100
ORDER BY Weight DESC*/

-- Exercício 4

/*SELECT
StoreName AS Nome_Loja, 
OpenDate AS Data_Abertura, 
EmployeeCount AS Numero_Funcionários
FROM DimStore
WHERE CloseDate IS NULL*/

-- Exercício 5

/*SELECT ProductKey, AvailableForSaleDate, ProductName, BrandName
FROM DimProduct
WHERE ProductName LIKE '%Home_Theater%' AND BrandName LIKE 'Litware' AND AvailableForSaleDate LIKE '15/03/2009'*/

-- Exercício 6

/*SELECT StoreKey, Status, StoreName
FROM DimStore
WHERE Status LIKE 'Off'*/

-- Exercício 7

/*SELECT StoreName, EmployeeCount
FROM DimStore
WHERE EmployeeCount BETWEEN 1 AND 20

SELECT StoreName, EmployeeCount
FROM DimStore
WHERE EmployeeCount BETWEEN 21 AND 50

SELECT StoreName, EmployeeCount
FROM DimStore
WHERE EmployeeCount >= '51'*/

-- Exercício 8

/*SELECT ProductKey, ProductName, UnitPrice
FROM DimProduct
WHERE ProductName LIKE '%LCD%'*/

-- Exercício 9

/*SELECT *
FROM DimProduct
WHERE ColorName IN ('Green', 'Orange' , 'Black', 'Silver', 'Pink') AND BrandName IN ('Contoso', 'Litware', 'Fabrikam')*/

-- Exercício 10

/*SELECT *
FROM DimProduct
WHERE BrandName LIKE 'Contoso' AND ColorName LIKE 'Silver' AND UnitPrice BETWEEN 10 AND 30
ORDER BY UnitPrice DESC*/

/*SELECT
COUNT(CustomerKey) AS 'Qtd. Clientes'
FROM DimCustomer*/

-- WHERE Gender = 'F'

/*SELECT
COUNT(DISTINCT DepartmentName) AS 'Qtd. áreas'
FROM DimEmployee*/

/*SELECT
SUM(SalesQuantity) AS 'Total Vendido'
FROM FactSales*/

/*SELECT
AVG(SalesQuantity) AS 'Média'
FROM FactSales*/

-- Exercício 1

/*SELECT
COUNT(SalesAmount) AS 'Valor Vendido',
COUNT(ReturnAmount) AS 'Valor Devolvido'
FROM FactSales*/

-- Exercício 2

/*SELECT
-- dividi por 13 para descobrir o salário de cada mês (incluindo décimo terceiro)
AVG (YearlyIncome/13) AS 'Média de salário'
FROM DimCustomer
WHERE Occupation LIKE '%Professional%'*/

-- Exercício 3

/*SELECT
MAX(EmployeeCount) AS 'Maior n° de Funcionários'
FROM DimStore

SELECT
MIN(EmployeeCount) AS 'Maior n° de Funcionários'
FROM DimStore

SELECT StoreName
FROM DimStore
WHERE EmployeeCount = 325 OR EmployeeCount = 7*/

-- Exercíco 4

/*SELECT
COUNT(FirstName)
FROM DimEmployee
WHERE Gender = 'F'

SELECT
COUNT(FirstName)
FROM DimEmployee
WHERE Gender = 'M'

SELECT TOP(1) FirstName, EmailAddress, HireDate
FROM DimEmployee
WHERE Gender = 'F'
ORDER BY HireDate

SELECT TOP(1) FirstName, EmailAddress, HireDate
FROM DimEmployee
WHERE Gender = 'M'
ORDER BY HireDate*/

-- Exercício 5

/*SELECT
COUNT(DISTINCT ColorName) AS 'Cores'
FROM DimProduct

SELECT
COUNT(DISTINCT BrandName) AS 'Marcas'
FROM DimProduct

SELECT
COUNT(DISTINCT ClassName) AS 'Classes de produtos'
FROM DimProduct*/
