ALTER TABLE Sales.customers  
	ALTER COLUMN email VARCHAR(255) 
	MASKED WITH (FUNCTION = 'email()'); 
GO