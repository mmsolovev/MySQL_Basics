
SELECT COUNT(*) AS total, DAYNAME(DATE_FORMAT(birthday, '2021-%m-%d')) AS day FROM profiles GROUP BY day ORDER BY total DESC;