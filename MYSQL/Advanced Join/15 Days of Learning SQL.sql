/*Enter your query here.*/
SELECT submission_date,
(SELECT COUNT(DISTINCT hacker_id)  
 FROM Submissions S  
 WHERE S.submission_date = S1.submission_date AND    
(SELECT COUNT(DISTINCT S2.submission_date) 
 FROM Submissions S2 WHERE S2.hacker_id = S.hacker_id AND S2.submission_date < S1.submission_date) = DATEDIFF(S1.submission_date , '2016-03-01')),
(SELECT hacker_id FROM Submissions S WHERE S.submission_date = S1.submission_date 
GROUP BY hacker_id ORDER BY COUNT(submission_id) DESC, hacker_id LIMIT 1) AS TMP,
(SELECT name FROM Hackers WHERE hacker_id = TMP)
FROM
(SELECT DISTINCT submission_date FROM Submissions) S1
GROUP BY submission_date;