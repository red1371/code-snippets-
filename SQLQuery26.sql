SELECT name KeyName, 
    symmetric_key_id KeyID, 
    key_length KeyLength, 
    algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;
