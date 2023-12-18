SELECT w.id,wp.age,w.coins_needed,w.power
FROM Wands w JOIN Wands_Property wp ON w.code = wp.code
WHERE wp.is_evil = 0 AND w.coins_needed = (SELECT MIN(coins_needed) FROM Wands AS X JOIN Wands_Property AS Y ON (X.code = Y.code) WHERE X.power = w.power AND Y.age = wp.age)
ORDER BY w.power DESC,wp.age DESC;
/*Enter your query here.
*/