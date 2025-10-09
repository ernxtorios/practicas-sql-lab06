USE testing;

-- Cantidad de estacionamientos
SELECT COUNT(DISTINCT SystemCodeNumber) AS AmountParking FROM parking;

-- Ordenar para identificar duplicados
SELECT * FROM parking ORDER BY SystemCodeNumber, LastUpdated;

-- Sin registros duplicados
SELECT DISTINCT SystemCodeNumber, Capacity, Occupancy, LastUpdated,
DENSE_RANK() OVER(PARTITION BY SystemCodeNumber ORDER BY SystemCodeNumber, LastUpdated) AS Ranking
FROM parking
ORDER BY SystemCodeNumber, LastUpdated;

-- Registros duplicados
SELECT * 
FROM (
	SELECT *, ROW_NUMBER() OVER(PARTITION BY SystemCodeNumber ORDER BY SystemCodeNumber, LastUpdated) AS Ranking
	FROM parking
) AS parking_rank
WHERE parking_rank.Ranking > 1
ORDER BY SystemCodeNumber, LastUpdated;

SELECT SystemCodeNumber, COUNT(SystemCodeNumber) AS AmountParking
FROM parking
GROUP BY SystemCodeNumber
ORDER BY AmountParking DESC;