-- The script must be run with the root of the project as the root of the psql for the file paths to work

-- Enabling timing to show duration of query execution
\timing on

\COPY uris(id, uri) FROM 'Wikipedia-EN-20120601_REVISION_URIS.TSV' WITH (FORMAT CSV, DELIMITER E'\t', ENCODING 'UTF8');

\COPY keywords(id, term, score) FROM 'Wikipedia-EN-20120601_KEYWORDS.TSV' WITH (FORMAT CSV, DELIMITER E'\t', ENCODING 'UTF8');

