select distinct city from station where left(city,1) not in('a','e','i','o','u') and right(city,1) not in('a','e','i','o','u');

# that left() and right() stuff is wrong, use substr()

SELECT DISTINCT(city) 
FROM STATION 
WHERE 
  LOWER(SUBSTR(CITY,1,1)) 
  NOT IN ('a','e','i','o','u') 
  AND LOWER(SUBSTR(CITY,LENGTH(CITY),1)) 
  NOT IN ('a','e','i','o','u');
