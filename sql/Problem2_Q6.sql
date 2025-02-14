WITH table_A AS (
    SELECT uris.url 
    FROM keywords
    JOIN uris ON keywords.id = uris.id
    WHERE keywords.term = 'reinforc'
    GROUP BY(uris.url)
),
table_B AS (
    SELECT uris.url
    FROM keywords
    JOIN uris ON keywords.id = uris.id
    WHERE keywords.term = 'infantri' OR keywords.term = 'brigad' OR keywords.term = 'fire'
    GROUP BY (uris.url)
    HAVING COUNT(DISTINCT keywords.term)=3
),
table_C AS (  --We now have all the necessary urls
    SELECT table_A.url 
    FROM table_A 
    WHERE table_A.url NOT IN
    (SELECT table_B.url FROM table_B)
),
table_D AS (  --We now have all necessary ids
    SELECT table_C.url, uris.id
    FROM uris 
    JOIN table_C ON table_C.url = uris.url
),
table_E AS (
    SELECT table_D.url, keywords.term, keywords.score
    FROM table_D
    JOIN keywords ON keywords.id = table_D.id
)
SELECT table_E.url,
            SUM(CASE WHEN table_E.term = 'reinforc' THEN table_E.score ELSE 0 END) - 
            SUM(CASE WHEN table_E.term IN ('infantri', 'brigad', 'fire') THEN table_E.score ELSE 0 END) AS score_diff,
            SUM(CASE WHEN table_E.term = 'reinforc' THEN table_E.score ELSE 0 END) AS reinforc_score,
            SUM(CASE WHEN table_E.term IN ('infantri', 'brigad', 'fire') THEN table_E.score ELSE 0 END) AS other_score
       FROM table_E
       GROUP BY table_E.url
       ORDER BY score_diff DESC;

