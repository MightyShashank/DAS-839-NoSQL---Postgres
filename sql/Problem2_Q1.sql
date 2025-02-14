SELECT uris.url 
FROM keywords
JOIN uris ON keywords.id = uris.id
WHERE keywords.term = 'infantri' OR keywords.term = 'reinforc' OR keywords.term = 'brigad' OR keywords.term = 'fire'
GROUP BY (uris.url)
HAVING COUNT (DISTINCT keywords.term) = 4;