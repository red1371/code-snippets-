ALTER TABLE Sales.customer_credit_cards  
	ALTER COLUMN credit_card_number VARCHAR(50)
	MASKED WITH (FUNCTION = 'partial(0,"XXXXXXXXXXXX",0)'); 
GO
