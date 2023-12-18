SELECT c.contest_id,c.hacker_id,c.name,
         SUM(total_submissions)AS total_submissions,
         SUM(total_accepted_submissions)AS total_accepted_submissions ,
         SUM(total_views)AS total_views,
         SUM(total_unique_views)AS total_unique_views 
FROM Contests AS c
LEFT JOIN Colleges AS co
    ON c.contest_id = co.contest_id
LEFT JOIN Challenges AS ch
    ON co.college_id = ch.college_id 
LEFT JOIN (SELECT challenge_id, SUM(total_views) AS total_views, 
                  SUM(total_unique_views) AS total_unique_views
                  FROM View_Stats GROUP BY challenge_id) AS d 
                  ON ch.challenge_id = d.challenge_id 
LEFT JOIN (SELECT challenge_id, 
                  SUM(total_submissions) AS total_submissions, 
                  SUM(total_accepted_submissions) AS total_accepted_submissions
                  FROM Submission_Stats
                  GROUP BY challenge_id) AS e
                  ON ch.challenge_id = e.challenge_id
GROUP BY c.contest_id, c.hacker_id, c.name
HAVING(total_submissions + total_accepted_submissions + total_views + total_unique_views)>0 
ORDER BY c.contest_id
/*Enter your query here.
*/