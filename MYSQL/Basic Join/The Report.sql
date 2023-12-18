SELECT IF(g.grade < 8, NULL, s.name),g.grade,s.marks
FROM students s JOIN grades g ON marks BETWEEN min_mark AND max_mark
ORDER BY g.grade DESC , s.name ,s.marks
/*Enter your query here.
*/