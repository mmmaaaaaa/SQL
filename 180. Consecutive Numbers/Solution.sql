SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1 JOIN Logs l2 JOIN Logs l3
ON l1.num = l2.num AND l2.num = l3.num
AND l2.id = l1.id + 1
AND l3.id = l1.id + 2