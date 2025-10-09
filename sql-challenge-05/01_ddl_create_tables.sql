USE testing;

DROP TABLE IF EXISTS parking;

IF OBJECT_ID(N'dbo.parking', N'U') IS NULL
BEGIN
	CREATE TABLE parking (
		SystemCodeNumber VARCHAR(100),
		Capacity INT,
		Occupancy INT,
		LastUpdated DATETIME
	)
END;
