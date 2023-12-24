/*Enter your query here.*/
SET @n := 1;
SET @d := 1;
SELECT GROUP_CONCAT(n SEPARATOR '&')
FROM (SELECT @n := @n + 1 AS n
      FROM information_schema.tables t, information_schema.tables t1
      LIMIT 1000) p
WHERE NOT EXISTS (SELECT *
                  FROM (SELECT @d := @d + 1 AS d
                        FROM information_schema.tables t2, information_schema.tables t3
                        LIMIT 1000) di WHERE MOD(n, d) = 0 AND n!= d);