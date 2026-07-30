SELECT id,
    IF(MOD(id, 2) = 1,
        IFNULL((SELECT student FROM Seat WHERE id = s.id + 1), s.student),
        (SELECT student FROM Seat WHERE id = s.id - 1)) AS student
FROM Seat s
ORDER BY id ASC