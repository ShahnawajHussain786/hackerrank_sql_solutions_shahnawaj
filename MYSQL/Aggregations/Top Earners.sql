SELECT months*salary, COUNT(*) 
FROM employee
GROUP BY months*salary
ORDER BY months*salary DESC
LIMIT 1;