-- Join Cross

SELECT
DimGeography.CityName,
DimStore.StoreName
FROM DimGeography
CROSS JOIN DimStore
WHERE DimGeography.CityName IS NOT NULL 

