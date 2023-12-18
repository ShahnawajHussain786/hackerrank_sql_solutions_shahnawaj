SELECT
    MAX(CASE WHEN occupation = 'Doctor' THEN name END),
    MAX(CASE WHEN occupation = 'Professor' THEN name END),
    MAX(CASE WHEN occupation = 'Singer' THEN name END),
    MAX(CASE WHEN occupation = 'Actor' THEN name END)
FROM (SELECT *, ROW_NUMBER() OVER(PARTITION BY occupation ORDER BY name) AS Table1 FROM occupations) AS Table2
GROUP BY Table1 ;
/*Enter your query here.
*/