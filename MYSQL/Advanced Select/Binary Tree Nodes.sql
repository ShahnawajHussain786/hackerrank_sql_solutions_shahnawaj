SELECT N,IF(P is null, 'Root', IF((SELECT COUNT(*) FROM BST WHERE P = B.N)> 0, 'Inner', 'Leaf')) 
FROM BST as B
ORDER BY N;