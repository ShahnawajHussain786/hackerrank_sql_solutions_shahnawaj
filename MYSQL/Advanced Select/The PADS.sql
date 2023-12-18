SELECT CONCAT(name,"(",SUBSTR(occupation,1,1),")") 
FROM OCCUPATIONS 
ORDER BY NAME;

SELECT CONCAT("There are a total of ",COUNT(occupation)," ",LOWER(occupation),"s.") 
FROM OCCUPATIONS 
GROUP BY occupation 
ORDER BY COUNT(occupation), occupation;
/*Enter your query here.
*/