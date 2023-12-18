/*Enter your query here.*/
SELECT f.x, f.y
FROM functions f JOIN functions g ON f.x = g.y AND f.y = g.x
GROUP BY f.x, f.y
HAVING COUNT(f.x) > 1 OR f.x < f.y
ORDER BY f.x;