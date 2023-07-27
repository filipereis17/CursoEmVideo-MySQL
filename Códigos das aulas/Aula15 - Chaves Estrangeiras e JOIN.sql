USE cadastro;

DESC gafanhotos;

ALTER TABLE gafanhotos ADD cursopreferido int;

ALTER TABLE gafanhotos 
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);

SELECT * FROM gafanhotos;
SELECT * FROM cursos;

UPDATE gafanhotos SET cursopreferido = '6' WHERE id = '1';

DELETE FROM cursos WHERE idcurso = 6;
DELETE FROM cursos WHERE idcurso = 28;

SELECT nome, cursopreferido FROM gafanhotos;

SELECT nome, ano FROM cursos;

SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
FROM gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido;

SELECT gafanhotos.nome, cursos.nome, cursos.ano 
FROM gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido;

SELECT * FROM gafanhotos;
/*
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '1' WHERE (`id` = '14');*/

SELECT gafanhotos.nome, cursos.nome, cursos.ano 
FROM gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido
ORDER BY gafanhotos.nome;

SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g INNER JOIN cursos AS c
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g LEFT OUTER JOIN cursos AS c
ON c.idcurso = g.cursopreferido;

SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g LEFT JOIN cursos AS c
ON c.idcurso = g.cursopreferido;

SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g RIGHT JOIN cursos AS c
ON c.idcurso = g.cursopreferido;
