SELECT t1.sn
FROM (SELECT s.id si,s.name sn,p.salary ps FROM students s JOIN packages p ON s.id = p.id) t1 JOIN (SELECT f.id fi,f.friend_id fd,pp.salary pps FROM friends f JOIN packages pp ON f.friend_id=pp.id) t2 ON t1.si=t2.fi AND t1.ps<t2.pps
ORDER BY t2.pps asc;
/*Enter your query here.
*/