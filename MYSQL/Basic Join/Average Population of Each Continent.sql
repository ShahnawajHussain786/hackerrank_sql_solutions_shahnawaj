SELECT co.continent,FLOOR(AVG(ci.population))
FROM CITY ci  JOIN COUNTYR co ON ci.CountryCode=co.Code
GROUP BY co.continent;