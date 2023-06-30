USE cadastro;

SELECT * FROM cursos
WHERE nome = 'P%';

SELECT * FROM cursos
WHERE nome LIKE 'P%';

SELECT * FROM cursos
WHERE nome LIKE 'a%'; -- p%

SELECT * FROM cursos
WHERE nome LIKE '%a';

SELECT * FROM cursos
WHERE nome LIKE '%a%';

SELECT * FROM cursos
WHERE nome NOT LIKE '%a%';

UPDATE cursos SET nome = 'PáOO' WHERE idcurso = 9;

SELECT * FROM cursos
WHERE nome LIKE 'ph%p%';

SELECT * FROM cursos
WHERE nome LIKE 'ph%p_';

SELECT * FROM cursos
WHERE nome LIKE 'p_p%';

SELECT * FROM cursos
WHERE nome LIKE 'p__t%';

SELECT * FROM gafanhotos
WHERE nome LIKE '%Silva%';

SELECT * FROM gafanhotos
WHERE nome LIKE '%_Silva%';

SELECT * FROM gafanhotos
WHERE nome LIKE '%Silva';

SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

SELECT DISTINCT carga FROM cursos
ORDER BY carga;

SELECT * FROM cursos;
SELECT count(*) FROM cursos;

SELECT * FROM cursos WHERE carga > 40;
SELECT count(*) FROM cursos WHERE carga > 40;

SELECT max(carga) FROM cursos;

SELECT max(totaulas) FROM cursos WHERE ano = '2016';

SELECT nome, min(totaulas) FROM cursos WHERE ano = 2016;

SELECT sum(totaulas) FROM cursos WHERE ano = 2016;

SELECT avg(totaulas) FROM cursos WHERE ano = 2016;