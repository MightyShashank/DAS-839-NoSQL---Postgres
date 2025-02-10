CREATE TABLE keywords (
    id INTEGER NOT NULL,
    term VARCHAR(50) NOT NULL,
    score FLOAT NOT NULL,
    PRIMARY KEY (id, term)
);

CREATE TABLE uris (
    id INTEGER NOT NULL,
    uri VARCHAR(500) NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE keywords
ADD FOREIGN KEY (id) REFERENCES uris(id);