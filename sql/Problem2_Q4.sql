SELECT uris.url, SUM(keywords.score) AS total_score
FROM keywords
JOIN uris ON keywords.id = uris.id
WHERE keywords.term = 'infantri' OR keywords.term = 'reinforc' OR keywords.term = 'brigad' OR keywords.term = 'fire'
GROUP BY (uris.url)
HAVING COUNT(DISTINCT keywords.term) = 4
ORDER BY total_score DESC;