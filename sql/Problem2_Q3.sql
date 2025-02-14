SELECT url
FROM (
    SELECT uris.url AS url
    FROM keywords
    JOIN uris ON keywords.id = uris.id
    WHERE keywords.term = 'reinforc'
) AS reinforc_table
WHERE url NOT IN (
    SELECT uris.url AS url
    FROM keywords
    JOIN uris ON keywords.id = uris.id
    WHERE keywords.term = 'infantri' OR keywords.term = 'brigad' OR keywords.term = 'fire'
);