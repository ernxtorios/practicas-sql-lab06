USE testing;

BULK INSERT parking
FROM 'D:\DatabasesProjects\SQLProjects\lab06\data\parking.csv'
WITH (
	FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
	FIRSTROW=2);