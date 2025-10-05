USE testing;

DROP TABLE IF EXISTS parking;

CREATE TABLE parking (
	SystemCodeNumber VARCHAR(100),
	Capacity INT,
	Occupancy INT,
	LastUpdated DATETIME
);