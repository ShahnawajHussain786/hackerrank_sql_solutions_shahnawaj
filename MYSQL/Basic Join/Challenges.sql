SELECT h.hacker_id,h.name, COUNT(c.challenge_id) AS no_of_challenges 
FROM Hackers AS h JOIN Challenges AS c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name 
HAVING no_of_challenges = (SELECT COUNT(c1.challenge_id) FROM Challenges AS c1 GROUP BY c1.hacker_id ORDER BY COUNT(*) DESC limit 1) OR no_of_challenges NOT IN (SELECT COUNT(c2.challenge_id)FROM Challenges AS c2 GROUP BY c2.hacker_id HAVING c2.hacker_id <>h.hacker_id)
ORDER BY no_of_challenges DESC, h.hacker_id;
/*Enter your query here.
*/