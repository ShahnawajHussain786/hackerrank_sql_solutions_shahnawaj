/*Enter your query here.*/
SET @cnt := 21;
SELECT REPEAT('* ', @cnt := @cnt - 1)
FROM information_schema.tables;