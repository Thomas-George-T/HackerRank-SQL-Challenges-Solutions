SELECT MONTHS*SALARY AS earnings, COUNT(*)
FROM employee
GROUP BY earnings 
ORDER BY earnings DESC
LIMIT 1;