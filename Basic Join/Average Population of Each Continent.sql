select country.continent, floor(avg(city.population)) from country join city on city.countrycode = country.code group by country.continent;
#ALTERNATE SOLUTION:
select country.continent, floor(avg(city.population)) from city,COUNTRY WHERE city.countrycode = country.code group by country.continent;
