USE cadastro;

SELECT * FROM gafanhotos;

ALTER TABLE gafanhotos
DROP COLUMN codigo;

INSERT INTO cursos VALUES
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

SELECT * FROM cursos;

UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

UPDATE cursos
SET nome = 'Java', ano = '2015', carga = '40'
WHERE idcurso = '5'
LIMIT 1;

UPDATE cursos
SET ano = '2050', carga = '800'
WHERE ano = '2018';

/* Remover limitação de atualização de linhas:
	Menu Edit -> Preferences -> SQL Editor -> Marcar "Safe Updates"
*/

UPDATE cursos
SET ano = '2018', carga = '0'
WHERE ano = '2050'
LIMIT 1;

DELETE FROM cursos
WHERE idcurso = '8';

DELETE FROM cursos
WHERE ano = 2050
LIMIT 2;

SELECT * FROM cursos;

TRUNCATE TABLE cursos;