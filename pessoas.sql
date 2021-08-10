CREATE TABLE pessoas(
id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
nome VARCHAR(30) NOT NULL,
nascimento DATE,
);
INSERT INTO pessoas (nome, nascimento) VALUES ('olavo', '1996-10-26');
INSERT INTO pessoas (nome, nascimento) VALUES ('alice', '2001-07-11');
INSERT INTO pessoas (nome, nascimento) VALUES ('olavo', '2001-01-01');
INSERT INTO pessoas (nome, nascimento) VALUES ('olavo', '2002-02-02');
UPDATE pessoas SET nome='argemiro' WHERE id=1;
UPDATE pessoas SET nome='laura' WHERE id=2;
