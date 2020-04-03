# Author: Thomas George Thomas
select distinct(city) from station where
city like "a%" or
city like "e%" or
city like "i%" or
city like "o%" or
city like "u%";

# this works faster and better
select distinct city from station where left(city,1) in('a','e','i','o','u')
