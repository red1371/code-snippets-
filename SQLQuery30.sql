OPEN SYMMETRIC KEY BikeStores_SymKey
DECRYPTION BY CERTIFICATE BikeStores_Cert;
GO

SELECT first_name, last_name, credit_card_number_encrypt AS 'Encrypted Data',
CONVERT(VARCHAR, DecryptByKey(credit_card_number_encrypt)) AS 'Decrypted Credit Card Number'
FROM Sales.customers C INNER JOIN Sales.customer_credit_cards CCC
ON C.customer_id = CCC.customer_id;


CLOSE SYMMETRIC KEY BikeStores_SymKey;
GO
