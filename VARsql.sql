-- Ex. Vari�veis

-- EX. 1

DECLARE @valor1 FLOAT, @valor2 FLOAT, @valor3 FLOAT, @valor4 FLOAT
SET @valor1 = 10
SET @valor2 = 5
SET @valor3 = 34
SET @valor4 = 7

-- a)
DECLARE @soma FLOAT, @subtra��o FLOAT, @multiplica��o FLOAT, @divis�o FLOAT
SET @soma = @valor1 + @valor2
SET @subtra��o =  @valor3 - @valor4
SET @multiplica��o = @valor1 * @valor4
SET @divis�o = ROUND (@valor3 / @valor4 , 2)

SELECT
	@soma,
	@subtra��o,
	@multiplica��o,
	@divis�o

-- EX. 2

DECLARE @produto VARCHAR(50), @quantidade INT, @preco FLOAT, @faturamento FLOAT
	SET @produto = 'Celular'
	SET @quantidade = 12
	SET @preco = 9.99
	SET @faturamento = @quantidade * @preco

SELECT
	@produto,
	@quantidade,
	FORMAT(@preco, 'C'),
	FORMAT(@faturamento, 'C')

-- EX. 3

DECLARE @nome VARCHAR(MAX), @data_nascimento DATE, @n_pets INT
	SET @nome = 'Andr�'
	SET @data_nascimento = '10/02/1998'
	SET @n_pets = 2

SELECT 'Meu nome � ' + @nome + ', nasci em ' + FORMAT(@data_nascimento, 'dd/MM/yyyy') + ' e tenho ' + CAST(@n_pets AS VARCHAR(MAX)) + ' pets.'

-- EX. 4

USE ContosoRetailDW
DECLARE @n_lojas_2008 VARCHAR(MAX)
	SET @n_lojas_2008 = ''

SELECT 
	@n_lojas_2008 = @n_lojas_2008 + StoreName + ','
FROM DimStore
WHERE FORMAT(CloseDate, 'yyyy') = '2008'
PRINT 'As lojas fechadas no ano de 2008 foram: ' + LEFT(@n_lojas_2008, DATALENGTH(@n_lojas_2008) - 1)  

-- EX. 5 

USE ContosoRetailDW
DECLARE @sub_lamps VARCHAR(MAX)
	SET @sub_lamps = ''

SELECT
	@sub_lamps = @sub_lamps + DimProduct.ProductName + ', '
FROM DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE ProductSubcategoryName = 'Lamps'
PRINT @sub_lamps



