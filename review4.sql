SELECT m.season,m.venue,d.bowler,
SUM(d.total_runs) AS total_runs
FROM deliveries d
JOIN matches m
ON d.match_id = m.id
GROUP BY m.season,m.venue,d.bowler
HAVING SUM(d.total_runs) > 150
ORDER BY m.season, m.venue, total_runs DESC;