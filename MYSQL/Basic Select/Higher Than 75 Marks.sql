SELECT name 
FROM STUDENTS 
WHERE marks > 75 
ORDER BY SUBSTR(name, LENGTH(name)-2, 3), id;   
/*Enter your query here.
*/