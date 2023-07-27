USE cadastro;

DESCRIBE pessoas;
DESC pessoas;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

SELECT * FROM pessoas;

ALTER TABLE pessoas
DROP COLUMN profissao;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

ALTER TABLE pessoas
ADD codigo INT FIRST;

ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT '';

ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

ALTER TABLE pessoas
RENAME TO gafanhotos;

DESC gafanhotos;

SELECT * FROM gafanhotos;

CREATE TABLE IF NOT EXISTS gafanhotos (teste int);

CREATE TABLE IF NOT EXISTS cursos (
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
totaulas INT UNSIGNED,
ano YEAR DEFAULT '2023'
) DEFAULT CHARSET = utf8;

DESCRIBE cursos;

ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

CREATE TABLE IF NOT EXISTS teste(
id int,
nome varchar(10),
idade int
);

INSERT INTO teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

SELECT * FROM teste;

DROP TABLE IF EXISTS alunos;
DROP TABLE IF EXISTS teste;