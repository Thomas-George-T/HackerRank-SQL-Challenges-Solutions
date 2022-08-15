select distinct city from station where left(city,1) in('a','e','i','o','u') and right(city,1) in('a','e','i','o','u') 
