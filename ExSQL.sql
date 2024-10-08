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

-- Exerc�cios

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
BirthDate AS Anivers�rio
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
-- R: 1 produto n�o foi vendido

-- Exerc�cio 1

/*SELECT TOP(100) 
SalesKey AS Id_venda,
SalesAmount AS Total_venda
FROM FactSales
ORDER BY SalesAmount DESC*/

-- Exerc�cio 2

/*SELECT TOP(10) UnitPrice, Weight, Size
FROM DimProduct
ORDER BY UnitPrice DESC, Weight DESC, Size DESC*/

-- Exerc�cio 3

/*SELECT 
Weight AS Peso,
ProductName AS Nome_produto
FROM DimProduct
WHERE Weight >= 100
ORDER BY Weight DESC*/

-- Exerc�cio 4

/*SELECT
StoreName AS Nome_Loja, 
OpenDate AS Data_Abertura, 
EmployeeCount AS Numero_Funcion�rios
FROM DimStore
WHERE CloseDate IS NULL*/

-- Exerc�cio 5

/*SELECT ProductKey, AvailableForSaleDate, ProductName, BrandName
FROM DimProduct
WHERE ProductName LIKE '%Home_Theater%' AND BrandName LIKE 'Litware' AND AvailableForSaleDate LIKE '%2009%' AND AvailableForSaleDate LIKE '%2009%'*/

-- Exerc�cio 6

/*SELECT StoreKey, Status, StoreName
FROM DimStore
WHERE Status LIKE 'Off'*/

-- Exerc�cio 7

/*SELECT StoreName, EmployeeCount
FROM DimStore
WHERE EmployeeCount BETWEEN 1 AND 20

SELECT StoreName, EmployeeCount
FROM DimStore
WHERE EmployeeCount BETWEEN 21 AND 50

SELECT StoreName, EmployeeCount
FROM DimStore
WHERE EmployeeCount >= '51'*/

-- Exerc�cio 8

/*SELECT ProductKey, ProductName, UnitPrice
FROM DimProduct
WHERE ProductName LIKE '%LCD%'*/

-- Exerc�cio 9

/*SELECT *
FROM DimProduct
WHERE ColorName IN ('Green', 'Orange' , 'Black', 'Silver', 'Pink') AND BrandName IN ('Contoso', 'Litware', 'Fabrikam')*/

-- Exerc�cio 10

/*SELECT *
FROM DimProduct
WHERE BrandName LIKE 'Contoso' AND ColorName LIKE 'Silver' AND UnitPrice BETWEEN 10 AND 30
ORDER BY UnitPrice DESC*/