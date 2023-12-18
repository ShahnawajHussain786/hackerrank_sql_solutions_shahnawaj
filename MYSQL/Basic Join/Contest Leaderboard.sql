SELECT m.hacker_id,h.name,SUM(score) AS Total_score
FROM (SELECT hacker_id, challenge_id, max(score) as score FROM Submissions  GROUP BY hacker_id, challenge_id)AS m JOIN Hackers h ON m.hacker_id = h.hacker_id
GROUP BY m.hacker_id,h.name
HAVING Total_score > 0
ORDER BY Total_score DESC,m.hacker_id;
/*Enter your query here.
*/