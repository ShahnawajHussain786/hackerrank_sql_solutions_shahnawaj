SELECT SUM(ci.population)
FROM CITY ci JOIN COUNTRY co ON ci.CountryCode=co.Code
WHERE co.continent='Asia';