SET @no_of_lines = 20 + 1;

SELECT REPEAT('* ', @no_of_lines := @no_of_lines -1) 
FROM INFORMATION_SCHEMA.TABLES
WHERE @no_of_lines > 0;
