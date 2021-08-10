CREATE TABLE pessoas(
id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
nome VARCHAR(30) NOT NULL,
nascimento DATE,
);
/*inserindo dados no banco sql*/
INSERT INTO `pessoas` (nome, nascimento) VALUES ('olavo', '1996-10-26');
INSERT INTO `pessoas` (nome, nascimento) VALUES ('alice', '2001-07-11');
INSERT INTO `pessoas` (nome, nascimento) VALUES ('olavo', '2001-01-01');
INSERT INTO `pessoas` (nome, nascimento) VALUES ('olavo', '2002-02-02');

/*atualizando dados no banco sql*/
UPDATE `pessoas` SET nome='argemiro' WHERE id=1;
UPDATE `pessoas` SET nome='laura' WHERE id=2;

/*boas praticas no banco de dados antes de chamar o comando delete*/
/*deletando dados no banco sql*/
SELECT * FROM `pessoas` WHERE id=4;
DELETE FROM `pessoas` WHERE id=4;

/* Ordenando nomes pelo sql*/
/* De forma crescente*/
SELECT * FROM `pessoas` ORDER BY nome;
/*De forma decrescente*/
SELECT * FROM `pessoas` ORDER BY nome DESC; 

/* adicionando mais uma coluna no sql*/
/* traduzindo comando: na tabela pessoas adiciona coluna genero depois de nascimento*/
ALTER TABLE `pessoas` ADD `genero`VARCHAR(1) NOT NULL AFTER `nascimento`;
/*adicionando itens no genero*/
UPDATE `pessoas` SET genero='M' WHERE id=1;
UPDATE `pessoas` SET nome='F' WHERE id=2;
UPDATE `pessoas` SET nome='M' WHERE id=2;
/*Contando itens no banco de dados*/
/*traduzindo comando: conte na id o numero de generos que há na tabela pessoas*/
SELECT COUNT(ID), genero from `pessoas` GROUP BY genero;