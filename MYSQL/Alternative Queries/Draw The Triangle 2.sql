/*Enter your query here.*/
SET @cnt := 0;
SELECT REPEAT('* ', @cnt := @cnt + 1)
FROM information_schema.tables
LIMIT 20;